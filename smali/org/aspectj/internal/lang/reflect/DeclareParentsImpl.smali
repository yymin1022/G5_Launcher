.class public Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;
.super Ljava/lang/Object;
.source "DeclareParentsImpl.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/DeclareParents;


# instance fields
.field private declaringType:Lorg/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end field

.field private firstMissingTypeName:Ljava/lang/String;

.field private isExtends:Z

.field private parents:[Ljava/lang/reflect/Type;

.field private parentsError:Z

.field private parentsString:Ljava/lang/String;

.field private targetTypesPattern:Lorg/aspectj/lang/reflect/TypePattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/aspectj/lang/reflect/AjType;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->parentsError:Z

    .line 40
    new-instance v0, Lorg/aspectj/internal/lang/reflect/TypePatternImpl;

    invoke-direct {v0, p1}, Lorg/aspectj/internal/lang/reflect/TypePatternImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->targetTypesPattern:Lorg/aspectj/lang/reflect/TypePattern;

    .line 41
    iput-boolean p3, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->isExtends:Z

    .line 42
    iput-object p4, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->declaringType:Lorg/aspectj/lang/reflect/AjType;

    .line 43
    iput-object p2, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->parentsString:Ljava/lang/String;

    .line 45
    :try_start_13
    invoke-interface {p4}, Lorg/aspectj/lang/reflect/AjType;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/aspectj/internal/lang/reflect/StringToType;->commaSeparatedListToTypeArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->parents:[Ljava/lang/reflect/Type;
    :try_end_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_1d} :catch_1e

    .line 50
    :goto_1d
    return-void

    .line 46
    :catch_1e
    move-exception v0

    .line 47
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->parentsError:Z

    .line 48
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->firstMissingTypeName:Ljava/lang/String;

    goto :goto_1d
.end method


# virtual methods
.method public getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->declaringType:Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public getParentTypes()[Ljava/lang/reflect/Type;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->parentsError:Z

    if-eqz v0, :cond_c

    .line 85
    new-instance v0, Ljava/lang/ClassNotFoundException;

    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->firstMissingTypeName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_c
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->parents:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getTargetTypesPattern()Lorg/aspectj/lang/reflect/TypePattern;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->targetTypesPattern:Lorg/aspectj/lang/reflect/TypePattern;

    return-object v0
.end method

.method public isExtends()Z
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->isExtends:Z

    return v0
.end method

.method public isImplements()Z
    .registers 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->isExtends:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 91
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    const-string v0, "declare parents : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->getTargetTypesPattern()Lorg/aspectj/lang/reflect/TypePattern;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/TypePattern;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->isExtends()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, " extends "

    :goto_1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->parentsString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_2a
    const-string v0, " implements "

    goto :goto_1d
.end method
