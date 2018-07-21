.class public Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;
.super Ljava/lang/Object;
.source "DeclarePrecedenceImpl.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/DeclarePrecedence;


# instance fields
.field private declaringType:Lorg/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end field

.field private precedenceList:[Lorg/aspectj/lang/reflect/TypePattern;

.field private precedenceString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;)V
    .registers 8

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->declaringType:Lorg/aspectj/lang/reflect/AjType;

    .line 32
    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->precedenceString:Ljava/lang/String;

    .line 34
    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 37
    :cond_1a
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v0, ","

    invoke-direct {v1, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/TypePattern;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->precedenceList:[Lorg/aspectj/lang/reflect/TypePattern;

    .line 39
    const/4 v0, 0x0

    :goto_2a
    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->precedenceList:[Lorg/aspectj/lang/reflect/TypePattern;

    array-length v2, v2

    if-ge v0, v2, :cond_43

    .line 40
    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->precedenceList:[Lorg/aspectj/lang/reflect/TypePattern;

    new-instance v3, Lorg/aspectj/internal/lang/reflect/TypePatternImpl;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/aspectj/internal/lang/reflect/TypePatternImpl;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 42
    :cond_43
    return-void
.end method


# virtual methods
.method public getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->declaringType:Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public getPrecedenceOrder()[Lorg/aspectj/lang/reflect/TypePattern;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->precedenceList:[Lorg/aspectj/lang/reflect/TypePattern;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "declare precedence : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->precedenceString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
