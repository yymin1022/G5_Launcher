.class public Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;
.super Ljava/lang/Object;
.source "DeclareAnnotationImpl.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/DeclareAnnotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl$1;
    }
.end annotation


# instance fields
.field private annText:Ljava/lang/String;

.field private declaringType:Lorg/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end field

.field private kind:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

.field private signaturePattern:Lorg/aspectj/lang/reflect/SignaturePattern;

.field private theAnnotation:Ljava/lang/annotation/Annotation;

.field private typePattern:Lorg/aspectj/lang/reflect/TypePattern;


# direct methods
.method public constructor <init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/annotation/Annotation;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->declaringType:Lorg/aspectj/lang/reflect/AjType;

    .line 36
    const-string v0, "at_type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;->Type:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->kind:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    .line 41
    :goto_11
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->kind:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    sget-object v1, Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;->Type:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    if-ne v0, v1, :cond_63

    .line 42
    new-instance v0, Lorg/aspectj/internal/lang/reflect/TypePatternImpl;

    invoke-direct {v0, p3}, Lorg/aspectj/internal/lang/reflect/TypePatternImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->typePattern:Lorg/aspectj/lang/reflect/TypePattern;

    .line 46
    :goto_1e
    iput-object p4, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->theAnnotation:Ljava/lang/annotation/Annotation;

    .line 47
    iput-object p5, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->annText:Ljava/lang/String;

    .line 48
    return-void

    .line 37
    :cond_23
    const-string v0, "at_field"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;->Field:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->kind:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    goto :goto_11

    .line 38
    :cond_30
    const-string v0, "at_method"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v0, Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;->Method:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->kind:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    goto :goto_11

    .line 39
    :cond_3d
    const-string v0, "at_constructor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    sget-object v0, Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;->Constructor:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->kind:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    goto :goto_11

    .line 40
    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown declare annotation kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_63
    new-instance v0, Lorg/aspectj/internal/lang/reflect/SignaturePatternImpl;

    invoke-direct {v0, p3}, Lorg/aspectj/internal/lang/reflect/SignaturePatternImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->signaturePattern:Lorg/aspectj/lang/reflect/SignaturePattern;

    goto :goto_1e
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->theAnnotation:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getAnnotationAsText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->annText:Ljava/lang/String;

    return-object v0
.end method

.method public getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->declaringType:Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public getKind()Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->kind:Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    return-object v0
.end method

.method public getSignaturePattern()Lorg/aspectj/lang/reflect/SignaturePattern;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->signaturePattern:Lorg/aspectj/lang/reflect/SignaturePattern;

    return-object v0
.end method

.method public getTypePattern()Lorg/aspectj/lang/reflect/TypePattern;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->typePattern:Lorg/aspectj/lang/reflect/TypePattern;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    const-string v1, "declare @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    sget-object v1, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl$1;->$SwitchMap$org$aspectj$lang$reflect$DeclareAnnotation$Kind:[I

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->getKind()Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;

    move-result-object v2

    invoke-virtual {v2}, Lorg/aspectj/lang/reflect/DeclareAnnotation$Kind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_6e

    .line 110
    :goto_19
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->getAnnotationAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :pswitch_2a
    const-string v1, "type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->getTypePattern()Lorg/aspectj/lang/reflect/TypePattern;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/reflect/TypePattern;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_19

    .line 98
    :pswitch_3b
    const-string v1, "method : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->getSignaturePattern()Lorg/aspectj/lang/reflect/SignaturePattern;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/reflect/SignaturePattern;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_19

    .line 102
    :pswitch_4c
    const-string v1, "field : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->getSignaturePattern()Lorg/aspectj/lang/reflect/SignaturePattern;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/reflect/SignaturePattern;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_19

    .line 106
    :pswitch_5d
    const-string v1, "constructor : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;->getSignaturePattern()Lorg/aspectj/lang/reflect/SignaturePattern;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/reflect/SignaturePattern;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_19

    .line 92
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_3b
        :pswitch_4c
        :pswitch_5d
    .end packed-switch
.end method
