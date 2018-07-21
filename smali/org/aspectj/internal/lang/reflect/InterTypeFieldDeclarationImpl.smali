.class public Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;
.super Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;
.source "InterTypeFieldDeclarationImpl.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;


# instance fields
.field private genericType:Ljava/lang/reflect/Type;

.field private name:Ljava/lang/String;

.field private type:Lorg/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/String;Lorg/aspectj/lang/reflect/AjType;Ljava/lang/reflect/Type;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;I)V

    .line 40
    iput-object p4, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->name:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->type:Lorg/aspectj/lang/reflect/AjType;

    .line 42
    iput-object p6, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->genericType:Ljava/lang/reflect/Type;

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/aspectj/lang/reflect/AjType;Lorg/aspectj/lang/reflect/AjType;Ljava/lang/reflect/Field;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/aspectj/internal/lang/reflect/InterTypeDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Lorg/aspectj/lang/reflect/AjType;I)V

    .line 47
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->name:Ljava/lang/String;

    .line 48
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->type:Lorg/aspectj/lang/reflect/AjType;

    .line 49
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 50
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_28

    .line 51
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->genericType:Ljava/lang/reflect/Type;

    .line 55
    :goto_27
    return-void

    .line 53
    :cond_28
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->genericType:Ljava/lang/reflect/Type;

    goto :goto_27
.end method


# virtual methods
.method public getGenericType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->genericType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/aspectj/lang/reflect/AjType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->type:Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->getType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->targetTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
