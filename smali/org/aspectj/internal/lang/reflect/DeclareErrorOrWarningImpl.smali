.class public Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;
.super Ljava/lang/Object;
.source "DeclareErrorOrWarningImpl.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/DeclareErrorOrWarning;


# instance fields
.field private declaringType:Lorg/aspectj/lang/reflect/AjType;

.field private isError:Z

.field private msg:Ljava/lang/String;

.field private pc:Lorg/aspectj/lang/reflect/PointcutExpression;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/aspectj/lang/reflect/AjType;)V
    .registers 6

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/aspectj/internal/lang/reflect/PointcutExpressionImpl;

    invoke-direct {v0, p1}, Lorg/aspectj/internal/lang/reflect/PointcutExpressionImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->pc:Lorg/aspectj/lang/reflect/PointcutExpression;

    .line 31
    iput-object p2, p0, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->msg:Ljava/lang/String;

    .line 32
    iput-boolean p3, p0, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->isError:Z

    .line 33
    iput-object p4, p0, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->declaringType:Lorg/aspectj/lang/reflect/AjType;

    .line 34
    return-void
.end method


# virtual methods
.method public getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->declaringType:Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPointcutExpression()Lorg/aspectj/lang/reflect/PointcutExpression;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->pc:Lorg/aspectj/lang/reflect/PointcutExpression;

    return-object v0
.end method

.method public isError()Z
    .registers 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->isError:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 60
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    const-string v0, "declare "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->isError()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "error : "

    :goto_12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->getPointcutExpression()Lorg/aspectj/lang/reflect/PointcutExpression;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/PointcutExpression;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v0, " : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :cond_3b
    const-string v0, "warning : "

    goto :goto_12
.end method
