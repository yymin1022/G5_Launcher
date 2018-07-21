.class abstract Lorg/aspectj/runtime/reflect/SignatureImpl;
.super Ljava/lang/Object;
.source "SignatureImpl.java"

# interfaces
.implements Lorg/aspectj/lang/Signature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;,
        Lorg/aspectj/runtime/reflect/SignatureImpl$Cache;
    }
.end annotation


# static fields
.field static EMPTY_CLASS_ARRAY:[Ljava/lang/Class; = null

.field static EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field static final INNER_SEP:Ljava/lang/String; = ":"

.field static final SEP:C = '-'

.field private static useCache:Z


# instance fields
.field declaringType:Ljava/lang/Class;

.field declaringTypeName:Ljava/lang/String;

.field lookupClassLoader:Ljava/lang/ClassLoader;

.field modifiers:I

.field name:Ljava/lang/String;

.field stringCache:Lorg/aspectj/runtime/reflect/SignatureImpl$Cache;

.field private stringRep:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lorg/aspectj/runtime/reflect/SignatureImpl;->useCache:Z

    .line 167
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lorg/aspectj/runtime/reflect/SignatureImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 168
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lorg/aspectj/runtime/reflect/SignatureImpl;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/Class;)V
    .registers 5

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->modifiers:I

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->lookupClassLoader:Ljava/lang/ClassLoader;

    .line 32
    iput p1, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->modifiers:I

    .line 33
    iput-object p2, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->name:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->declaringType:Ljava/lang/Class;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->modifiers:I

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->lookupClassLoader:Ljava/lang/ClassLoader;

    .line 134
    iput-object p1, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->stringRep:Ljava/lang/String;

    .line 135
    return-void
.end method

.method private getLookupClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->lookupClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->lookupClassLoader:Ljava/lang/ClassLoader;

    .line 130
    :cond_e
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->lookupClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static getUseCache()Z
    .registers 1

    .prologue
    .line 197
    sget-boolean v0, Lorg/aspectj/runtime/reflect/SignatureImpl;->useCache:Z

    return v0
.end method

.method static setUseCache(Z)V
    .registers 1

    .prologue
    .line 193
    sput-boolean p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->useCache:Z

    .line 194
    return-void
.end method


# virtual methods
.method addFullTypeNames(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V
    .registers 5

    .prologue
    .line 104
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_17

    .line 105
    if-lez v0, :cond_b

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_b
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->fullTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :cond_17
    return-void
.end method

.method addShortTypeNames(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V
    .registers 5

    .prologue
    .line 110
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_17

    .line 111
    if-lez v0, :cond_b

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    :cond_b
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->shortTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :cond_17
    return-void
.end method

.method addTypeArray(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V
    .registers 3

    .prologue
    .line 117
    invoke-virtual {p0, p1, p2}, Lorg/aspectj/runtime/reflect/SignatureImpl;->addFullTypeNames(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V

    .line 118
    return-void
.end method

.method protected abstract createToString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;
.end method

.method extractInt(I)I
    .registers 4

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method extractString(I)Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v3, 0x2d

    .line 142
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 144
    :goto_9
    add-int/lit8 v2, p1, -0x1

    if-lez p1, :cond_17

    .line 145
    add-int/lit8 v1, v0, 0x1

    .line 146
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->stringRep:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move p1, v2

    goto :goto_9

    .line 148
    :cond_17
    const/4 v2, -0x1

    if-ne v0, v2, :cond_20

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->stringRep:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 152
    :cond_20
    iget-object v2, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->stringRep:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method extractStrings(I)[Ljava/lang/String;
    .registers 7

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ":"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 176
    new-array v3, v2, [Ljava/lang/String;

    .line 177
    const/4 v0, 0x0

    :goto_12
    if-ge v0, v2, :cond_1d

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 178
    :cond_1d
    return-object v3
.end method

.method extractType(I)Ljava/lang/Class;
    .registers 4

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-direct {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getLookupClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method extractTypes(I)[Ljava/lang/Class;
    .registers 8

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ":"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 184
    new-array v3, v2, [Ljava/lang/Class;

    .line 185
    const/4 v0, 0x0

    :goto_12
    if-ge v0, v2, :cond_25

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getLookupClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 186
    :cond_25
    return-object v3
.end method

.method fullTypeName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 86
    if-nez p1, :cond_5

    const-string v0, "ANONYMOUS"

    .line 88
    :goto_4
    return-object v0

    .line 87
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->fullTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 88
    :cond_27
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public getDeclaringType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->declaringType:Ljava/lang/Class;

    if-nez v0, :cond_b

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractType(I)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->declaringType:Ljava/lang/Class;

    .line 76
    :cond_b
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->declaringType:Ljava/lang/Class;

    return-object v0
.end method

.method public getDeclaringTypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->declaringTypeName:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 80
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getDeclaringType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->declaringTypeName:Ljava/lang/String;

    .line 82
    :cond_e
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->declaringTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiers()I
    .registers 3

    .prologue
    .line 67
    iget v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->modifiers:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractInt(I)I

    move-result v0

    iput v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->modifiers:I

    .line 68
    :cond_c
    iget v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->modifiers:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->name:Ljava/lang/String;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->name:Ljava/lang/String;

    .line 72
    :cond_b
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setLookupClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->lookupClassLoader:Ljava/lang/ClassLoader;

    .line 126
    return-void
.end method

.method shortTypeName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 98
    if-nez p1, :cond_5

    const-string v0, "ANONYMOUS"

    .line 100
    :goto_4
    return-object v0

    .line 99
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->shortTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 100
    :cond_27
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method stripPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 92
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 93
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 94
    :goto_9
    return-object p1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_9
.end method

.method public final toLongString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->longStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->toString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toShortString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->toString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->middleStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->toString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    sget-boolean v1, Lorg/aspectj/runtime/reflect/SignatureImpl;->useCache:Z

    if-eqz v1, :cond_10

    .line 43
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->stringCache:Lorg/aspectj/runtime/reflect/SignatureImpl$Cache;

    if-nez v1, :cond_27

    .line 45
    :try_start_9
    new-instance v1, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;

    invoke-direct {v1}, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;-><init>()V

    iput-object v1, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->stringCache:Lorg/aspectj/runtime/reflect/SignatureImpl$Cache;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_10} :catch_22

    .line 53
    :cond_10
    :goto_10
    if-nez v0, :cond_16

    .line 54
    invoke-virtual {p0, p1}, Lorg/aspectj/runtime/reflect/SignatureImpl;->createToString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_16
    sget-boolean v1, Lorg/aspectj/runtime/reflect/SignatureImpl;->useCache:Z

    if-eqz v1, :cond_21

    .line 57
    iget-object v1, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->stringCache:Lorg/aspectj/runtime/reflect/SignatureImpl$Cache;

    iget v2, p1, Lorg/aspectj/runtime/reflect/StringMaker;->cacheOffset:I

    invoke-interface {v1, v2, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl$Cache;->set(ILjava/lang/String;)V

    .line 59
    :cond_21
    return-object v0

    .line 46
    :catch_22
    move-exception v1

    .line 47
    const/4 v1, 0x0

    sput-boolean v1, Lorg/aspectj/runtime/reflect/SignatureImpl;->useCache:Z

    goto :goto_10

    .line 50
    :cond_27
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->stringCache:Lorg/aspectj/runtime/reflect/SignatureImpl$Cache;

    iget v1, p1, Lorg/aspectj/runtime/reflect/StringMaker;->cacheOffset:I

    invoke-interface {v0, v1}, Lorg/aspectj/runtime/reflect/SignatureImpl$Cache;->get(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method
