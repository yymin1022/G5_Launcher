.class Lorg/aspectj/runtime/reflect/MethodSignatureImpl;
.super Lorg/aspectj/runtime/reflect/CodeSignatureImpl;
.source "MethodSignatureImpl.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/MethodSignature;


# instance fields
.field private method:Ljava/lang/reflect/Method;

.field returnType:Ljava/lang/Class;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 8

    .prologue
    .line 28
    invoke-direct/range {p0 .. p6}, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;-><init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;)V

    .line 29
    iput-object p7, p0, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;->returnType:Ljava/lang/Class;

    .line 30
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private search(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/reflect/Method;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 88
    if-nez p1, :cond_5

    move-object v0, v1

    .line 112
    :cond_4
    :goto_4
    return-object v0

    .line 91
    :cond_5
    invoke-interface {p4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 92
    invoke-interface {p4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    :try_start_e
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v0

    goto :goto_4

    .line 95
    :catch_13
    move-exception v0

    .line 99
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;->search(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 100
    if-nez v0, :cond_4

    .line 103
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 104
    if-eqz v3, :cond_35

    .line 105
    const/4 v0, 0x0

    :goto_25
    array-length v2, v3

    if-ge v0, v2, :cond_35

    .line 106
    aget-object v2, v3, v0

    invoke-direct {p0, v2, p2, p3, p4}, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;->search(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 107
    if-eqz v2, :cond_32

    move-object v0, v2

    .line 108
    goto :goto_4

    .line 105
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_35
    move-object v0, v1

    .line 112
    goto :goto_4
.end method


# virtual methods
.method protected createToString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getModifiers()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/aspectj/runtime/reflect/StringMaker;->makeModifiersString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    iget-boolean v1, p1, Lorg/aspectj/runtime/reflect/StringMaker;->includeArgs:Z

    if-eqz v1, :cond_1f

    .line 47
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/aspectj/runtime/reflect/StringMaker;->makeTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    :cond_1f
    iget-boolean v1, p1, Lorg/aspectj/runtime/reflect/StringMaker;->includeArgs:Z

    if-eqz v1, :cond_28

    .line 49
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    :cond_28
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getDeclaringType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getDeclaringTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/aspectj/runtime/reflect/StringMaker;->makePrimaryTypeName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/aspectj/runtime/reflect/StringMaker;->addSignature(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V

    .line 54
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/aspectj/runtime/reflect/StringMaker;->addThrows(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .registers 5

    .prologue
    .line 64
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;->method:Ljava/lang/reflect/Method;

    if-nez v0, :cond_16

    .line 65
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getDeclaringType()Ljava/lang/Class;

    move-result-object v0

    .line 67
    :try_start_8
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;->method:Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_16} :catch_19

    .line 75
    :cond_16
    :goto_16
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;->method:Ljava/lang/reflect/Method;

    return-object v0

    .line 68
    :catch_19
    move-exception v1

    .line 70
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 71
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3, v1}, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;->search(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;->method:Ljava/lang/reflect/Method;

    goto :goto_16
.end method

.method public getReturnType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;->returnType:Ljava/lang/Class;

    if-nez v0, :cond_b

    .line 39
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractType(I)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;->returnType:Ljava/lang/Class;

    .line 40
    :cond_b
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;->returnType:Ljava/lang/Class;

    return-object v0
.end method
