.class public Lorg/aspectj/runtime/reflect/FieldSignatureImpl;
.super Lorg/aspectj/runtime/reflect/MemberSignatureImpl;
.source "FieldSignatureImpl.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/FieldSignature;


# instance fields
.field private field:Ljava/lang/reflect/Field;

.field fieldType:Ljava/lang/Class;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/aspectj/runtime/reflect/MemberSignatureImpl;-><init>(ILjava/lang/String;Ljava/lang/Class;)V

    .line 29
    iput-object p4, p0, Lorg/aspectj/runtime/reflect/FieldSignatureImpl;->fieldType:Ljava/lang/Class;

    .line 30
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/aspectj/runtime/reflect/MemberSignatureImpl;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected createToString(Lorg/aspectj/runtime/reflect/StringMaker;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 43
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getModifiers()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/aspectj/runtime/reflect/StringMaker;->makeModifiersString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    iget-boolean v1, p1, Lorg/aspectj/runtime/reflect/StringMaker;->includeArgs:Z

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/FieldSignatureImpl;->getFieldType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/aspectj/runtime/reflect/StringMaker;->makeTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    :cond_1f
    iget-boolean v1, p1, Lorg/aspectj/runtime/reflect/StringMaker;->includeArgs:Z

    if-eqz v1, :cond_28

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    :cond_28
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getDeclaringType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getDeclaringTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/aspectj/runtime/reflect/StringMaker;->makePrimaryTypeName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/FieldSignatureImpl;->field:Ljava/lang/reflect/Field;

    if-nez v0, :cond_12

    .line 58
    :try_start_4
    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getDeclaringType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/FieldSignatureImpl;->field:Ljava/lang/reflect/Field;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_15

    .line 63
    :cond_12
    :goto_12
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/FieldSignatureImpl;->field:Ljava/lang/reflect/Field;

    return-object v0

    .line 59
    :catch_15
    move-exception v0

    goto :goto_12
.end method

.method public getFieldType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/FieldSignatureImpl;->fieldType:Ljava/lang/Class;

    if-nez v0, :cond_b

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->extractType(I)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/FieldSignatureImpl;->fieldType:Ljava/lang/Class;

    .line 38
    :cond_b
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/FieldSignatureImpl;->fieldType:Ljava/lang/Class;

    return-object v0
.end method
