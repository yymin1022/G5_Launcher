.class Lorg/aspectj/runtime/reflect/StringMaker;
.super Ljava/lang/Object;
.source "StringMaker.java"


# static fields
.field static longStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

.field static middleStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

.field static shortStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;


# instance fields
.field cacheOffset:I

.field includeArgs:Z

.field includeEnclosingPoint:Z

.field includeJoinPointTypeName:Z

.field includeModifiers:Z

.field includeThrows:Z

.field shortKindName:Z

.field shortPrimaryTypeNames:Z

.field shortTypeNames:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    new-instance v0, Lorg/aspectj/runtime/reflect/StringMaker;

    invoke-direct {v0}, Lorg/aspectj/runtime/reflect/StringMaker;-><init>()V

    sput-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    .line 34
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput-boolean v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortTypeNames:Z

    .line 35
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeArgs:Z

    .line 36
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeThrows:Z

    .line 37
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeModifiers:Z

    .line 38
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput-boolean v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortPrimaryTypeNames:Z

    .line 40
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeJoinPointTypeName:Z

    .line 41
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeEnclosingPoint:Z

    .line 43
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->cacheOffset:I

    .line 48
    new-instance v0, Lorg/aspectj/runtime/reflect/StringMaker;

    invoke-direct {v0}, Lorg/aspectj/runtime/reflect/StringMaker;-><init>()V

    sput-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->middleStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    .line 49
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->middleStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput-boolean v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortTypeNames:Z

    .line 50
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->middleStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput-boolean v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeArgs:Z

    .line 51
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->middleStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeThrows:Z

    .line 52
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->middleStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeModifiers:Z

    .line 53
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->middleStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortPrimaryTypeNames:Z

    .line 55
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->cacheOffset:I

    .line 60
    new-instance v0, Lorg/aspectj/runtime/reflect/StringMaker;

    invoke-direct {v0}, Lorg/aspectj/runtime/reflect/StringMaker;-><init>()V

    sput-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->longStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    .line 61
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->longStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortTypeNames:Z

    .line 62
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->longStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput-boolean v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeArgs:Z

    .line 63
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->longStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeThrows:Z

    .line 64
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->longStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput-boolean v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->includeModifiers:Z

    .line 65
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->longStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortPrimaryTypeNames:Z

    .line 66
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->longStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->shortKindName:Z

    .line 68
    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->longStringMaker:Lorg/aspectj/runtime/reflect/StringMaker;

    const/4 v1, 0x2

    iput v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->cacheOffset:I

    .line 69
    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lorg/aspectj/runtime/reflect/StringMaker;->shortTypeNames:Z

    .line 21
    iput-boolean v0, p0, Lorg/aspectj/runtime/reflect/StringMaker;->includeArgs:Z

    .line 22
    iput-boolean v1, p0, Lorg/aspectj/runtime/reflect/StringMaker;->includeThrows:Z

    .line 23
    iput-boolean v1, p0, Lorg/aspectj/runtime/reflect/StringMaker;->includeModifiers:Z

    .line 24
    iput-boolean v1, p0, Lorg/aspectj/runtime/reflect/StringMaker;->shortPrimaryTypeNames:Z

    .line 26
    iput-boolean v0, p0, Lorg/aspectj/runtime/reflect/StringMaker;->includeJoinPointTypeName:Z

    .line 27
    iput-boolean v0, p0, Lorg/aspectj/runtime/reflect/StringMaker;->includeEnclosingPoint:Z

    .line 28
    iput-boolean v0, p0, Lorg/aspectj/runtime/reflect/StringMaker;->shortKindName:Z

    return-void
.end method


# virtual methods
.method public addSignature(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V
    .registers 4

    .prologue
    .line 119
    if-nez p2, :cond_3

    .line 132
    :goto_2
    return-void

    .line 120
    :cond_3
    iget-boolean v0, p0, Lorg/aspectj/runtime/reflect/StringMaker;->includeArgs:Z

    if-nez v0, :cond_16

    .line 121
    array-length v0, p2

    if-nez v0, :cond_10

    .line 122
    const-string v0, "()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 125
    :cond_10
    const-string v0, "(..)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 129
    :cond_16
    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {p0, p1, p2}, Lorg/aspectj/runtime/reflect/StringMaker;->addTypeNames(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V

    .line 131
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public addThrows(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V
    .registers 4

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/aspectj/runtime/reflect/StringMaker;->includeThrows:Z

    if-eqz v0, :cond_9

    if-eqz p2, :cond_9

    array-length v0, p2

    if-nez v0, :cond_a

    .line 139
    :cond_9
    :goto_9
    return-void

    .line 137
    :cond_a
    const-string v0, " throws "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {p0, p1, p2}, Lorg/aspectj/runtime/reflect/StringMaker;->addTypeNames(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V

    goto :goto_9
.end method

.method public addTypeNames(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V
    .registers 5

    .prologue
    .line 112
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_17

    .line 113
    if-lez v0, :cond_b

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    :cond_b
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lorg/aspectj/runtime/reflect/StringMaker;->makeTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :cond_17
    return-void
.end method

.method makeKindName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 72
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 73
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 74
    :goto_9
    return-object p1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_9
.end method

.method makeModifiersString(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 78
    iget-boolean v0, p0, Lorg/aspectj/runtime/reflect/StringMaker;->includeModifiers:Z

    if-nez v0, :cond_7

    const-string v0, ""

    .line 81
    :goto_6
    return-object v0

    .line 79
    :cond_7
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    const-string v0, ""

    goto :goto_6

    .line 81
    :cond_14
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public makePrimaryTypeName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 108
    iget-boolean v0, p0, Lorg/aspectj/runtime/reflect/StringMaker;->shortPrimaryTypeNames:Z

    invoke-virtual {p0, p1, p2, v0}, Lorg/aspectj/runtime/reflect/StringMaker;->makeTypeName(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public makeTypeName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/aspectj/runtime/reflect/StringMaker;->shortTypeNames:Z

    invoke-virtual {p0, p1, v0, v1}, Lorg/aspectj/runtime/reflect/StringMaker;->makeTypeName(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method makeTypeName(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v2, 0x2e

    const/16 v1, 0x24

    .line 91
    if-nez p1, :cond_9

    const-string v0, "ANONYMOUS"

    .line 99
    :goto_8
    return-object v0

    .line 92
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 93
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p3}, Lorg/aspectj/runtime/reflect/StringMaker;->makeTypeName(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 96
    :cond_2f
    if-eqz p3, :cond_3a

    .line 97
    invoke-virtual {p0, p2}, Lorg/aspectj/runtime/reflect/StringMaker;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 99
    :cond_3a
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method stripPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 85
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 86
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 87
    :goto_9
    return-object p1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_9
.end method
