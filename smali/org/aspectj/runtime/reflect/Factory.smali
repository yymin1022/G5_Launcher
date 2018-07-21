.class public final Lorg/aspectj/runtime/reflect/Factory;
.super Ljava/lang/Object;
.source "Factory.java"


# static fields
.field private static NO_ARGS:[Ljava/lang/Object;

.field static class$java$lang$ClassNotFoundException:Ljava/lang/Class;

.field static prims:Ljava/util/Hashtable;


# instance fields
.field count:I

.field filename:Ljava/lang/String;

.field lexicalClass:Ljava/lang/Class;

.field lookupClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/aspectj/runtime/reflect/Factory;->prims:Ljava/util/Hashtable;

    .line 44
    sget-object v0, Lorg/aspectj/runtime/reflect/Factory;->prims:Ljava/util/Hashtable;

    const-string v1, "void"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/aspectj/runtime/reflect/Factory;->prims:Ljava/util/Hashtable;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/aspectj/runtime/reflect/Factory;->prims:Ljava/util/Hashtable;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/aspectj/runtime/reflect/Factory;->prims:Ljava/util/Hashtable;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/aspectj/runtime/reflect/Factory;->prims:Ljava/util/Hashtable;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/aspectj/runtime/reflect/Factory;->prims:Ljava/util/Hashtable;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/aspectj/runtime/reflect/Factory;->prims:Ljava/util/Hashtable;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/aspectj/runtime/reflect/Factory;->prims:Ljava/util/Hashtable;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/aspectj/runtime/reflect/Factory;->prims:Ljava/util/Hashtable;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/aspectj/runtime/reflect/Factory;->NO_ARGS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/aspectj/runtime/reflect/Factory;->filename:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lorg/aspectj/runtime/reflect/Factory;->lexicalClass:Ljava/lang/Class;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lorg/aspectj/runtime/reflect/Factory;->count:I

    .line 84
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    .line 85
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    .prologue
    .line 75
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 3

    .prologue
    .line 56
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 57
    const/4 v0, 0x0

    .line 75
    :cond_9
    :goto_9
    return-object v0

    .line 58
    :cond_a
    sget-object v0, Lorg/aspectj/runtime/reflect/Factory;->prims:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 59
    if-nez v0, :cond_9

    .line 65
    if-nez p1, :cond_1b

    .line 66
    :try_start_16
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_9

    .line 70
    :cond_1b
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_1f} :catch_21

    move-result-object v0

    goto :goto_9

    .line 72
    :catch_21
    move-exception v0

    .line 75
    sget-object v0, Lorg/aspectj/runtime/reflect/Factory;->class$java$lang$ClassNotFoundException:Ljava/lang/Class;

    if-nez v0, :cond_2f

    const-string v0, "java.lang.ClassNotFoundException"

    invoke-static {v0}, Lorg/aspectj/runtime/reflect/Factory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/aspectj/runtime/reflect/Factory;->class$java$lang$ClassNotFoundException:Ljava/lang/Class;

    goto :goto_9

    :cond_2f
    sget-object v0, Lorg/aspectj/runtime/reflect/Factory;->class$java$lang$ClassNotFoundException:Ljava/lang/Class;

    goto :goto_9
.end method

.method public static makeEncSJP(Ljava/lang/reflect/Member;)Lorg/aspectj/lang/JoinPoint$StaticPart;
    .registers 10

    .prologue
    .line 144
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_37

    .line 145
    check-cast p0, Ljava/lang/reflect/Method;

    .line 146
    new-instance v0, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;-><init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V

    .line 149
    const-string v1, "method-execution"

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 158
    :goto_2f
    new-instance v2, Lorg/aspectj/runtime/reflect/JoinPointImpl$EnclosingStaticPartImpl;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v1, v4}, Lorg/aspectj/runtime/reflect/JoinPointImpl$EnclosingStaticPartImpl;-><init>(ILjava/lang/String;Lorg/aspectj/lang/Signature;Lorg/aspectj/lang/reflect/SourceLocation;)V

    return-object v2

    .line 150
    :cond_37
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_5f

    .line 151
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 152
    new-instance v0, Lorg/aspectj/runtime/reflect/ConstructorSignatureImpl;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/ConstructorSignatureImpl;-><init>(ILjava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;)V

    .line 154
    const-string v1, "constructor-execution"

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 155
    goto :goto_2f

    .line 156
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "member must be either a method or constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;
    .registers 5

    .prologue
    .line 164
    new-instance v0, Lorg/aspectj/runtime/reflect/JoinPointImpl;

    sget-object v1, Lorg/aspectj/runtime/reflect/Factory;->NO_ARGS:[Ljava/lang/Object;

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/aspectj/runtime/reflect/JoinPointImpl;-><init>(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;
    .registers 7

    .prologue
    .line 168
    new-instance v0, Lorg/aspectj/runtime/reflect/JoinPointImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/aspectj/runtime/reflect/JoinPointImpl;-><init>(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;
    .registers 8

    .prologue
    .line 172
    new-instance v0, Lorg/aspectj/runtime/reflect/JoinPointImpl;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/aspectj/runtime/reflect/JoinPointImpl;-><init>(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;
    .registers 5

    .prologue
    .line 176
    new-instance v0, Lorg/aspectj/runtime/reflect/JoinPointImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/aspectj/runtime/reflect/JoinPointImpl;-><init>(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public makeAdviceSig(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AdviceSignature;
    .registers 16

    .prologue
    .line 332
    new-instance v0, Lorg/aspectj/runtime/reflect/AdviceSignatureImpl;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/AdviceSignatureImpl;-><init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V

    .line 334
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 335
    return-object v0
.end method

.method public makeAdviceSig(Ljava/lang/String;)Lorg/aspectj/lang/reflect/AdviceSignature;
    .registers 4

    .prologue
    .line 292
    new-instance v0, Lorg/aspectj/runtime/reflect/AdviceSignatureImpl;

    invoke-direct {v0, p1}, Lorg/aspectj/runtime/reflect/AdviceSignatureImpl;-><init>(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 294
    return-object v0
.end method

.method public makeAdviceSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/AdviceSignature;
    .registers 19

    .prologue
    .line 299
    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 301
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-static {p3, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 303
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v1, ":"

    invoke-direct {v3, p4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    .line 305
    new-array v5, v6, [Ljava/lang/Class;

    .line 306
    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v6, :cond_2b

    .line 307
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v7, v8}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v1

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 309
    :cond_2b
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v1, ":"

    move-object/from16 v0, p5

    invoke-direct {v3, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    .line 311
    new-array v6, v7, [Ljava/lang/String;

    .line 312
    const/4 v1, 0x0

    :goto_3b
    if-ge v1, v7, :cond_46

    .line 313
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 315
    :cond_46
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v1, ":"

    move-object/from16 v0, p6

    invoke-direct {v3, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v8

    .line 317
    new-array v7, v8, [Ljava/lang/Class;

    .line 318
    const/4 v1, 0x0

    :goto_56
    if-ge v1, v8, :cond_67

    .line 319
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v9, v10}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v1

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 322
    :cond_67
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v0, p7

    invoke-static {v0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 324
    new-instance v1, Lorg/aspectj/runtime/reflect/AdviceSignatureImpl;

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lorg/aspectj/runtime/reflect/AdviceSignatureImpl;-><init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V

    .line 326
    iget-object v2, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 327
    return-object v1
.end method

.method public makeCatchClauseSig(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lorg/aspectj/lang/reflect/CatchClauseSignature;
    .registers 6

    .prologue
    .line 380
    new-instance v0, Lorg/aspectj/runtime/reflect/CatchClauseSignatureImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/aspectj/runtime/reflect/CatchClauseSignatureImpl;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 382
    return-object v0
.end method

.method public makeCatchClauseSig(Ljava/lang/String;)Lorg/aspectj/lang/reflect/CatchClauseSignature;
    .registers 4

    .prologue
    .line 360
    new-instance v0, Lorg/aspectj/runtime/reflect/CatchClauseSignatureImpl;

    invoke-direct {v0, p1}, Lorg/aspectj/runtime/reflect/CatchClauseSignatureImpl;-><init>(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 362
    return-object v0
.end method

.method public makeCatchClauseSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/CatchClauseSignature;
    .registers 8

    .prologue
    .line 366
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-static {p1, v0}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 368
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ":"

    invoke-direct {v1, p2, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 371
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ":"

    invoke-direct {v2, p3, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 374
    new-instance v3, Lorg/aspectj/runtime/reflect/CatchClauseSignatureImpl;

    invoke-direct {v3, v0, v1, v2}, Lorg/aspectj/runtime/reflect/CatchClauseSignatureImpl;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 376
    return-object v3
.end method

.method public makeConstructorSig(ILjava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;)Lorg/aspectj/lang/reflect/ConstructorSignature;
    .registers 12

    .prologue
    .line 263
    new-instance v0, Lorg/aspectj/runtime/reflect/ConstructorSignatureImpl;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/ConstructorSignatureImpl;-><init>(ILjava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;)V

    .line 265
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 266
    return-object v0
.end method

.method public makeConstructorSig(Ljava/lang/String;)Lorg/aspectj/lang/reflect/ConstructorSignature;
    .registers 4

    .prologue
    .line 226
    new-instance v0, Lorg/aspectj/runtime/reflect/ConstructorSignatureImpl;

    invoke-direct {v0, p1}, Lorg/aspectj/runtime/reflect/ConstructorSignatureImpl;-><init>(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 228
    return-object v0
.end method

.method public makeConstructorSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/ConstructorSignature;
    .registers 16

    .prologue
    const/4 v0, 0x0

    .line 233
    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 235
    iget-object v2, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-static {p2, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 237
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v3, ":"

    invoke-direct {v5, p3, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    .line 239
    new-array v3, v6, [Ljava/lang/Class;

    move v4, v0

    .line 240
    :goto_1b
    if-ge v4, v6, :cond_2c

    .line 241
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v7, v8}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v3, v4

    .line 240
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 243
    :cond_2c
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v4, ":"

    invoke-direct {v6, p4, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    .line 245
    new-array v4, v7, [Ljava/lang/String;

    move v5, v0

    .line 246
    :goto_3a
    if-ge v5, v7, :cond_45

    .line 247
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 246
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 249
    :cond_45
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v5, ":"

    invoke-direct {v6, p5, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    .line 251
    new-array v5, v7, [Ljava/lang/Class;

    .line 252
    :goto_52
    if-ge v0, v7, :cond_63

    .line 253
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v8, v9}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v5, v0

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 255
    :cond_63
    new-instance v0, Lorg/aspectj/runtime/reflect/ConstructorSignatureImpl;

    invoke-direct/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/ConstructorSignatureImpl;-><init>(ILjava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;)V

    .line 257
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 258
    return-object v0
.end method

.method public makeESJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$EnclosingStaticPart;
    .registers 7

    .prologue
    .line 138
    new-instance v0, Lorg/aspectj/runtime/reflect/JoinPointImpl$EnclosingStaticPartImpl;

    iget v1, p0, Lorg/aspectj/runtime/reflect/Factory;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/aspectj/runtime/reflect/Factory;->count:I

    const/4 v2, -0x1

    invoke-virtual {p0, p3, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSourceLoc(II)Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/aspectj/runtime/reflect/JoinPointImpl$EnclosingStaticPartImpl;-><init>(ILjava/lang/String;Lorg/aspectj/lang/Signature;Lorg/aspectj/lang/reflect/SourceLocation;)V

    return-object v0
.end method

.method public makeESJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;II)Lorg/aspectj/lang/JoinPoint$EnclosingStaticPart;
    .registers 8

    .prologue
    .line 134
    new-instance v0, Lorg/aspectj/runtime/reflect/JoinPointImpl$EnclosingStaticPartImpl;

    iget v1, p0, Lorg/aspectj/runtime/reflect/Factory;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/aspectj/runtime/reflect/Factory;->count:I

    invoke-virtual {p0, p3, p4}, Lorg/aspectj/runtime/reflect/Factory;->makeSourceLoc(II)Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/aspectj/runtime/reflect/JoinPointImpl$EnclosingStaticPartImpl;-><init>(ILjava/lang/String;Lorg/aspectj/lang/Signature;Lorg/aspectj/lang/reflect/SourceLocation;)V

    return-object v0
.end method

.method public makeESJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;Lorg/aspectj/lang/reflect/SourceLocation;)Lorg/aspectj/lang/JoinPoint$EnclosingStaticPart;
    .registers 7

    .prologue
    .line 130
    new-instance v0, Lorg/aspectj/runtime/reflect/JoinPointImpl$EnclosingStaticPartImpl;

    iget v1, p0, Lorg/aspectj/runtime/reflect/Factory;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/aspectj/runtime/reflect/Factory;->count:I

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/aspectj/runtime/reflect/JoinPointImpl$EnclosingStaticPartImpl;-><init>(ILjava/lang/String;Lorg/aspectj/lang/Signature;Lorg/aspectj/lang/reflect/SourceLocation;)V

    return-object v0
.end method

.method public makeFieldSig(ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lorg/aspectj/lang/reflect/FieldSignature;
    .registers 7

    .prologue
    .line 286
    new-instance v0, Lorg/aspectj/runtime/reflect/FieldSignatureImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/aspectj/runtime/reflect/FieldSignatureImpl;-><init>(ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 287
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 288
    return-object v0
.end method

.method public makeFieldSig(Ljava/lang/String;)Lorg/aspectj/lang/reflect/FieldSignature;
    .registers 4

    .prologue
    .line 270
    new-instance v0, Lorg/aspectj/runtime/reflect/FieldSignatureImpl;

    invoke-direct {v0, p1}, Lorg/aspectj/runtime/reflect/FieldSignatureImpl;-><init>(Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 272
    return-object v0
.end method

.method public makeFieldSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/FieldSignature;
    .registers 9

    .prologue
    .line 276
    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 277
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-static {p3, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 278
    iget-object v2, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-static {p4, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 280
    new-instance v3, Lorg/aspectj/runtime/reflect/FieldSignatureImpl;

    invoke-direct {v3, v0, p2, v1, v2}, Lorg/aspectj/runtime/reflect/FieldSignatureImpl;-><init>(ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 281
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 282
    return-object v3
.end method

.method public makeInitializerSig(ILjava/lang/Class;)Lorg/aspectj/lang/reflect/InitializerSignature;
    .registers 5

    .prologue
    .line 354
    new-instance v0, Lorg/aspectj/runtime/reflect/InitializerSignatureImpl;

    invoke-direct {v0, p1, p2}, Lorg/aspectj/runtime/reflect/InitializerSignatureImpl;-><init>(ILjava/lang/Class;)V

    .line 355
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 356
    return-object v0
.end method

.method public makeInitializerSig(Ljava/lang/String;)Lorg/aspectj/lang/reflect/InitializerSignature;
    .registers 4

    .prologue
    .line 339
    new-instance v0, Lorg/aspectj/runtime/reflect/InitializerSignatureImpl;

    invoke-direct {v0, p1}, Lorg/aspectj/runtime/reflect/InitializerSignatureImpl;-><init>(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 341
    return-object v0
.end method

.method public makeInitializerSig(Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/InitializerSignature;
    .registers 6

    .prologue
    .line 345
    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 346
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-static {p2, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 348
    new-instance v2, Lorg/aspectj/runtime/reflect/InitializerSignatureImpl;

    invoke-direct {v2, v0, v1}, Lorg/aspectj/runtime/reflect/InitializerSignatureImpl;-><init>(ILjava/lang/Class;)V

    .line 349
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 350
    return-object v2
.end method

.method public makeLockSig()Lorg/aspectj/lang/reflect/LockSignature;
    .registers 3

    .prologue
    .line 392
    const-string v0, "Ljava/lang/Object;"

    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 393
    new-instance v1, Lorg/aspectj/runtime/reflect/LockSignatureImpl;

    invoke-direct {v1, v0}, Lorg/aspectj/runtime/reflect/LockSignatureImpl;-><init>(Ljava/lang/Class;)V

    .line 394
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 395
    return-object v1
.end method

.method public makeLockSig(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/LockSignature;
    .registers 4

    .prologue
    .line 399
    new-instance v0, Lorg/aspectj/runtime/reflect/LockSignatureImpl;

    invoke-direct {v0, p1}, Lorg/aspectj/runtime/reflect/LockSignatureImpl;-><init>(Ljava/lang/Class;)V

    .line 400
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 401
    return-object v0
.end method

.method public makeLockSig(Ljava/lang/String;)Lorg/aspectj/lang/reflect/LockSignature;
    .registers 4

    .prologue
    .line 386
    new-instance v0, Lorg/aspectj/runtime/reflect/LockSignatureImpl;

    invoke-direct {v0, p1}, Lorg/aspectj/runtime/reflect/LockSignatureImpl;-><init>(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 388
    return-object v0
.end method

.method public makeMethodSig(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Lorg/aspectj/lang/reflect/MethodSignature;
    .registers 16

    .prologue
    .line 219
    new-instance v0, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;-><init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V

    .line 221
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 222
    return-object v0
.end method

.method public makeMethodSig(Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;
    .registers 4

    .prologue
    .line 180
    new-instance v0, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;

    invoke-direct {v0, p1}, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;-><init>(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 182
    return-object v0
.end method

.method public makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;
    .registers 19

    .prologue
    .line 187
    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 189
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-static {p3, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 191
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v1, ":"

    invoke-direct {v3, p4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    .line 193
    new-array v5, v6, [Ljava/lang/Class;

    .line 194
    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v6, :cond_2b

    .line 195
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v7, v8}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v1

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 197
    :cond_2b
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v1, ":"

    move-object/from16 v0, p5

    invoke-direct {v3, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    .line 199
    new-array v6, v7, [Ljava/lang/String;

    .line 200
    const/4 v1, 0x0

    :goto_3b
    if-ge v1, v7, :cond_46

    .line 201
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 203
    :cond_46
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v1, ":"

    move-object/from16 v0, p6

    invoke-direct {v3, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v8

    .line 205
    new-array v7, v8, [Ljava/lang/Class;

    .line 206
    const/4 v1, 0x0

    :goto_56
    if-ge v1, v8, :cond_67

    .line 207
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v9, v10}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v1

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 209
    :cond_67
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v0, p7

    invoke-static {v0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 211
    new-instance v1, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;-><init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V

    .line 214
    return-object v1
.end method

.method public makeSJP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/aspectj/lang/JoinPoint$StaticPart;
    .registers 18

    .prologue
    .line 113
    const-string v7, ""

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    .line 114
    new-instance v2, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;

    iget v3, p0, Lorg/aspectj/runtime/reflect/Factory;->count:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/aspectj/runtime/reflect/Factory;->count:I

    const/4 v4, -0x1

    move/from16 v0, p8

    invoke-virtual {p0, v0, v4}, Lorg/aspectj/runtime/reflect/Factory;->makeSourceLoc(II)Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v4

    invoke-direct {v2, v3, p1, v1, v4}, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;-><init>(ILjava/lang/String;Lorg/aspectj/lang/Signature;Lorg/aspectj/lang/reflect/SourceLocation;)V

    return-object v2
.end method

.method public makeSJP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/aspectj/lang/JoinPoint$StaticPart;
    .registers 19

    .prologue
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 97
    invoke-virtual/range {v1 .. v8}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    .line 98
    new-instance v2, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;

    iget v3, p0, Lorg/aspectj/runtime/reflect/Factory;->count:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/aspectj/runtime/reflect/Factory;->count:I

    const/4 v4, -0x1

    move/from16 v0, p9

    invoke-virtual {p0, v0, v4}, Lorg/aspectj/runtime/reflect/Factory;->makeSourceLoc(II)Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v4

    invoke-direct {v2, v3, p1, v1, v4}, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;-><init>(ILjava/lang/String;Lorg/aspectj/lang/Signature;Lorg/aspectj/lang/reflect/SourceLocation;)V

    return-object v2
.end method

.method public makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;
    .registers 7

    .prologue
    .line 126
    new-instance v0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;

    iget v1, p0, Lorg/aspectj/runtime/reflect/Factory;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/aspectj/runtime/reflect/Factory;->count:I

    const/4 v2, -0x1

    invoke-virtual {p0, p3, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSourceLoc(II)Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;-><init>(ILjava/lang/String;Lorg/aspectj/lang/Signature;Lorg/aspectj/lang/reflect/SourceLocation;)V

    return-object v0
.end method

.method public makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;II)Lorg/aspectj/lang/JoinPoint$StaticPart;
    .registers 8

    .prologue
    .line 122
    new-instance v0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;

    iget v1, p0, Lorg/aspectj/runtime/reflect/Factory;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/aspectj/runtime/reflect/Factory;->count:I

    invoke-virtual {p0, p3, p4}, Lorg/aspectj/runtime/reflect/Factory;->makeSourceLoc(II)Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;-><init>(ILjava/lang/String;Lorg/aspectj/lang/Signature;Lorg/aspectj/lang/reflect/SourceLocation;)V

    return-object v0
.end method

.method public makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;Lorg/aspectj/lang/reflect/SourceLocation;)Lorg/aspectj/lang/JoinPoint$StaticPart;
    .registers 7

    .prologue
    .line 118
    new-instance v0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;

    iget v1, p0, Lorg/aspectj/runtime/reflect/Factory;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/aspectj/runtime/reflect/Factory;->count:I

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;-><init>(ILjava/lang/String;Lorg/aspectj/lang/Signature;Lorg/aspectj/lang/reflect/SourceLocation;)V

    return-object v0
.end method

.method public makeSourceLoc(II)Lorg/aspectj/lang/reflect/SourceLocation;
    .registers 6

    .prologue
    .line 424
    new-instance v0, Lorg/aspectj/runtime/reflect/SourceLocationImpl;

    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lexicalClass:Ljava/lang/Class;

    iget-object v2, p0, Lorg/aspectj/runtime/reflect/Factory;->filename:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lorg/aspectj/runtime/reflect/SourceLocationImpl;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    return-object v0
.end method

.method public makeUnlockSig()Lorg/aspectj/lang/reflect/UnlockSignature;
    .registers 3

    .prologue
    .line 411
    const-string v0, "Ljava/lang/Object;"

    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 412
    new-instance v1, Lorg/aspectj/runtime/reflect/UnlockSignatureImpl;

    invoke-direct {v1, v0}, Lorg/aspectj/runtime/reflect/UnlockSignatureImpl;-><init>(Ljava/lang/Class;)V

    .line 413
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 414
    return-object v1
.end method

.method public makeUnlockSig(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/UnlockSignature;
    .registers 4

    .prologue
    .line 418
    new-instance v0, Lorg/aspectj/runtime/reflect/UnlockSignatureImpl;

    invoke-direct {v0, p1}, Lorg/aspectj/runtime/reflect/UnlockSignatureImpl;-><init>(Ljava/lang/Class;)V

    .line 419
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 420
    return-object v0
.end method

.method public makeUnlockSig(Ljava/lang/String;)Lorg/aspectj/lang/reflect/UnlockSignature;
    .registers 4

    .prologue
    .line 405
    new-instance v0, Lorg/aspectj/runtime/reflect/UnlockSignatureImpl;

    invoke-direct {v0, p1}, Lorg/aspectj/runtime/reflect/UnlockSignatureImpl;-><init>(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/Factory;->lookupClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->setLookupClassLoader(Ljava/lang/ClassLoader;)V

    .line 407
    return-object v0
.end method
