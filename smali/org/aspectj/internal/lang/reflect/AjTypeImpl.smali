.class public Lorg/aspectj/internal/lang/reflect/AjTypeImpl;
.super Ljava/lang/Object;
.source "AjTypeImpl.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/AjType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/aspectj/lang/reflect/AjType",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final ajcMagic:Ljava/lang/String; = "ajc$"


# instance fields
.field private advice:[Lorg/aspectj/lang/reflect/Advice;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private declaredAdvice:[Lorg/aspectj/lang/reflect/Advice;

.field private declaredITDCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

.field private declaredITDFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

.field private declaredITDMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

.field private declaredPointcuts:[Lorg/aspectj/lang/reflect/Pointcut;

.field private itdCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

.field private itdFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

.field private itdMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

.field private pointcuts:[Lorg/aspectj/lang/reflect/Pointcut;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredPointcuts:[Lorg/aspectj/lang/reflect/Pointcut;

    .line 71
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->pointcuts:[Lorg/aspectj/lang/reflect/Pointcut;

    .line 72
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredAdvice:[Lorg/aspectj/lang/reflect/Advice;

    .line 73
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->advice:[Lorg/aspectj/lang/reflect/Advice;

    .line 74
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    .line 75
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    .line 76
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    .line 77
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    .line 78
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    .line 79
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    .line 82
    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    .line 83
    return-void
.end method

.method private addAnnotationStyleDeclareParents(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/aspectj/lang/reflect/DeclareParents;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 956
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_9
    if-ge v1, v4, :cond_40

    aget-object v5, v3, v1

    .line 957
    const-class v0, Lorg/aspectj/lang/annotation/DeclareParents;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 958
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_23

    .line 956
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 959
    :cond_23
    const-class v0, Lorg/aspectj/lang/annotation/DeclareParents;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/DeclareParents;

    .line 960
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 961
    new-instance v6, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/DeclareParents;->value()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v5, v2, p0}, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/aspectj/lang/reflect/AjType;)V

    .line 967
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 970
    :cond_40
    return-void
.end method

.method private addAnnotationStyleITDFields(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 685
    return-void
.end method

.method private addAnnotationStyleITDMethods(Ljava/util/List;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 662
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isAspect()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 663
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_f
    if-ge v2, v4, :cond_66

    aget-object v5, v3, v2

    .line 664
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_21

    .line 663
    :cond_1d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f

    .line 665
    :cond_21
    const-class v0, Lorg/aspectj/lang/annotation/DeclareParents;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 666
    const-class v6, Lorg/aspectj/lang/annotation/DeclareParents;

    .line 667
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/DeclareParents;

    .line 668
    invoke-interface {v0}, Lorg/aspectj/lang/annotation/DeclareParents;->defaultImpl()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, v6, :cond_1d

    .line 669
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    move v0, v1

    :goto_41
    if-ge v0, v7, :cond_1d

    aget-object v8, v6, v0

    .line 670
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v9

    if-nez v9, :cond_54

    if-eqz p2, :cond_54

    .line 669
    :goto_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 671
    :cond_54
    new-instance v9, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v9, p0, v10, v8, v11}, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Lorg/aspectj/lang/reflect/AjType;Ljava/lang/reflect/Method;I)V

    .line 675
    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 680
    :cond_66
    return-void
.end method

.method private asAdvice(Ljava/lang/reflect/Method;)Lorg/aspectj/lang/reflect/Advice;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 533
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_a

    move-object v0, v1

    .line 552
    :goto_9
    return-object v0

    .line 534
    :cond_a
    const-class v0, Lorg/aspectj/lang/annotation/Before;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/Before;

    .line 535
    if-eqz v0, :cond_21

    new-instance v1, Lorg/aspectj/internal/lang/reflect/AdviceImpl;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/Before;->value()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/aspectj/lang/reflect/AdviceKind;->BEFORE:Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-direct {v1, p1, v0, v2}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;)V

    move-object v0, v1

    goto :goto_9

    .line 536
    :cond_21
    const-class v0, Lorg/aspectj/lang/annotation/After;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/After;

    .line 537
    if-eqz v0, :cond_38

    new-instance v1, Lorg/aspectj/internal/lang/reflect/AdviceImpl;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/After;->value()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/aspectj/lang/reflect/AdviceKind;->AFTER:Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-direct {v1, p1, v0, v2}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;)V

    move-object v0, v1

    goto :goto_9

    .line 538
    :cond_38
    const-class v0, Lorg/aspectj/lang/annotation/AfterReturning;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/AfterReturning;

    .line 539
    if-eqz v0, :cond_5f

    .line 540
    invoke-interface {v0}, Lorg/aspectj/lang/annotation/AfterReturning;->pointcut()Ljava/lang/String;

    move-result-object v1

    .line 541
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/AfterReturning;->value()Ljava/lang/String;

    move-result-object v1

    .line 542
    :cond_52
    new-instance v2, Lorg/aspectj/internal/lang/reflect/AdviceImpl;

    sget-object v3, Lorg/aspectj/lang/reflect/AdviceKind;->AFTER_RETURNING:Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/AfterReturning;->returning()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v1, v3, v0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_9

    .line 544
    :cond_5f
    const-class v0, Lorg/aspectj/lang/annotation/AfterThrowing;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/AfterThrowing;

    .line 545
    if-eqz v0, :cond_80

    .line 546
    invoke-interface {v0}, Lorg/aspectj/lang/annotation/AfterThrowing;->pointcut()Ljava/lang/String;

    move-result-object v1

    .line 547
    if-nez v1, :cond_73

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/AfterThrowing;->value()Ljava/lang/String;

    move-result-object v1

    .line 548
    :cond_73
    new-instance v2, Lorg/aspectj/internal/lang/reflect/AdviceImpl;

    sget-object v3, Lorg/aspectj/lang/reflect/AdviceKind;->AFTER_THROWING:Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/AfterThrowing;->throwing()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v1, v3, v0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_9

    .line 550
    :cond_80
    const-class v0, Lorg/aspectj/lang/annotation/Around;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/Around;

    .line 551
    if-eqz v0, :cond_98

    new-instance v1, Lorg/aspectj/internal/lang/reflect/AdviceImpl;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/Around;->value()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/aspectj/lang/reflect/AdviceKind;->AROUND:Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-direct {v1, p1, v0, v2}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;)V

    move-object v0, v1

    goto/16 :goto_9

    :cond_98
    move-object v0, v1

    .line 552
    goto/16 :goto_9
.end method

.method private asPointcut(Ljava/lang/reflect/Method;)Lorg/aspectj/lang/reflect/Pointcut;
    .registers 8

    .prologue
    .line 424
    const-class v0, Lorg/aspectj/lang/annotation/Pointcut;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/aspectj/lang/annotation/Pointcut;

    .line 425
    if-eqz v3, :cond_4c

    .line 426
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 427
    const-string v0, "ajc$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 429
    const-string v0, "$$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 430
    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 431
    const-string v0, "$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 432
    const/4 v2, -0x1

    if-eq v0, v2, :cond_35

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 434
    :cond_35
    new-instance v0, Lorg/aspectj/internal/lang/reflect/PointcutImpl;

    invoke-interface {v3}, Lorg/aspectj/lang/annotation/Pointcut;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v4

    invoke-interface {v3}, Lorg/aspectj/lang/annotation/Pointcut;->argNames()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/aspectj/internal/lang/reflect/PointcutImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;)V

    .line 436
    :goto_4b
    return-object v0

    :cond_4c
    const/4 v0, 0x0

    goto :goto_4b
.end method

.method private getAdvice(Ljava/util/Set;)[Lorg/aspectj/lang/reflect/Advice;
    .registers 8

    .prologue
    .line 492
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->advice:[Lorg/aspectj/lang/reflect/Advice;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->initAdvice()V

    .line 493
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 494
    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->advice:[Lorg/aspectj/lang/reflect/Advice;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v3, :cond_24

    aget-object v4, v2, v0

    .line 495
    invoke-interface {v4}, Lorg/aspectj/lang/reflect/Advice;->getKind()Lorg/aspectj/lang/reflect/AdviceKind;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 497
    :cond_24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/Advice;

    .line 498
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 499
    return-object v0
.end method

.method private getDeclaredAdvice(Ljava/util/Set;)[Lorg/aspectj/lang/reflect/Advice;
    .registers 8

    .prologue
    .line 467
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredAdvice:[Lorg/aspectj/lang/reflect/Advice;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->initDeclaredAdvice()V

    .line 468
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 469
    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredAdvice:[Lorg/aspectj/lang/reflect/Advice;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v3, :cond_24

    aget-object v4, v2, v0

    .line 470
    invoke-interface {v4}, Lorg/aspectj/lang/reflect/Advice;->getKind()Lorg/aspectj/lang/reflect/AdviceKind;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 472
    :cond_24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/Advice;

    .line 473
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 474
    return-object v0
.end method

.method private initAdvice()V
    .registers 6

    .prologue
    .line 503
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 504
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 505
    array-length v3, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_1d

    aget-object v4, v1, v0

    .line 506
    invoke-direct {p0, v4}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->asAdvice(Ljava/lang/reflect/Method;)Lorg/aspectj/lang/reflect/Advice;

    move-result-object v4

    .line 507
    if-eqz v4, :cond_1a

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 509
    :cond_1d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/Advice;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->advice:[Lorg/aspectj/lang/reflect/Advice;

    .line 510
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->advice:[Lorg/aspectj/lang/reflect/Advice;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 511
    return-void
.end method

.method private initDeclaredAdvice()V
    .registers 6

    .prologue
    .line 478
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 479
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 480
    array-length v3, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_1d

    aget-object v4, v1, v0

    .line 481
    invoke-direct {p0, v4}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->asAdvice(Ljava/lang/reflect/Method;)Lorg/aspectj/lang/reflect/Advice;

    move-result-object v4

    .line 482
    if-eqz v4, :cond_1a

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 484
    :cond_1d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/Advice;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredAdvice:[Lorg/aspectj/lang/reflect/Advice;

    .line 485
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredAdvice:[Lorg/aspectj/lang/reflect/Advice;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 486
    return-void
.end method

.method private isReallyAMethod(Ljava/lang/reflect/Method;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 358
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ajc$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 366
    :cond_e
    :goto_e
    return v0

    .line 359
    :cond_f
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_18

    move v0, v1

    goto :goto_e

    .line 360
    :cond_18
    const-class v2, Lorg/aspectj/lang/annotation/Pointcut;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 361
    const-class v2, Lorg/aspectj/lang/annotation/Before;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 362
    const-class v2, Lorg/aspectj/lang/annotation/After;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 363
    const-class v2, Lorg/aspectj/lang/annotation/AfterReturning;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 364
    const-class v2, Lorg/aspectj/lang/annotation/AfterThrowing;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 365
    const-class v2, Lorg/aspectj/lang/annotation/Around;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    .line 366
    goto :goto_e
.end method

.method private toAjTypeArray([Ljava/lang/Class;)[Lorg/aspectj/lang/reflect/AjType;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1162
    array-length v0, p1

    new-array v1, v0, [Lorg/aspectj/lang/reflect/AjType;

    .line 1163
    const/4 v0, 0x0

    :goto_4
    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 1164
    aget-object v2, p1, v0

    invoke-static {v2}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1163
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1166
    :cond_12
    return-object v1
.end method

.method private toClassArray([Lorg/aspectj/lang/reflect/AjType;)[Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1170
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/Class;

    .line 1171
    const/4 v0, 0x0

    :goto_4
    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 1172
    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/aspectj/lang/reflect/AjType;->getJavaClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1171
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1174
    :cond_12
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 1151
    instance-of v0, p1, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1153
    :goto_5
    return v0

    .line 1152
    :cond_6
    check-cast p1, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    .line 1153
    iget-object v0, p1, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public getAdvice(Ljava/lang/String;)Lorg/aspectj/lang/reflect/Advice;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/aspectj/lang/reflect/NoSuchAdviceException;
        }
    .end annotation

    .prologue
    .line 515
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "use getAdvice(AdviceType...) instead for un-named advice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_10
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->advice:[Lorg/aspectj/lang/reflect/Advice;

    if-nez v0, :cond_17

    invoke-direct {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->initAdvice()V

    .line 517
    :cond_17
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->advice:[Lorg/aspectj/lang/reflect/Advice;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v2, :cond_2d

    aget-object v3, v1, v0

    .line 518
    invoke-interface {v3}, Lorg/aspectj/lang/reflect/Advice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    return-object v3

    .line 517
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 520
    :cond_2d
    new-instance v0, Lorg/aspectj/lang/reflect/NoSuchAdviceException;

    invoke-direct {v0, p1}, Lorg/aspectj/lang/reflect/NoSuchAdviceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs getAdvice([Lorg/aspectj/lang/reflect/AdviceKind;)[Lorg/aspectj/lang/reflect/Advice;
    .registers 4

    .prologue
    .line 454
    array-length v0, p1

    if-nez v0, :cond_e

    .line 455
    const-class v0, Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 460
    :goto_9
    invoke-direct {p0, v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getAdvice(Ljava/util/Set;)[Lorg/aspectj/lang/reflect/Advice;

    move-result-object v0

    return-object v0

    .line 457
    :cond_e
    const-class v0, Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 458
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_9
.end method

.method public getAjTypes()[Lorg/aspectj/lang/reflect/AjType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 220
    invoke-direct {p0, v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->toAjTypeArray([Ljava/lang/Class;)[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public varargs getConstructor([Lorg/aspectj/lang/reflect/AjType;)Ljava/lang/reflect/Constructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-direct {p0, p1}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->toClassArray([Lorg/aspectj/lang/reflect/AjType;)[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getConstructors()[Ljava/lang/reflect/Constructor;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getDeclareAnnotations()[Lorg/aspectj/lang/reflect/DeclareAnnotation;
    .registers 14

    .prologue
    const/4 v6, 0x0

    .line 1000
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    array-length v10, v9

    move v7, v6

    :goto_e
    if-ge v7, v10, :cond_52

    aget-object v2, v9, v7

    .line 1002
    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1003
    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;

    .line 1005
    const/4 v0, 0x0

    .line 1006
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 1007
    array-length v5, v3

    move v2, v6

    :goto_2a
    if-ge v2, v5, :cond_75

    aget-object v4, v3, v2

    .line 1008
    invoke-interface {v4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;

    if-eq v11, v12, :cond_4f

    .line 1014
    :goto_36
    new-instance v0, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;->kind()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;->pattern()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcDeclareAnnotation;->annotation()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/aspectj/internal/lang/reflect/DeclareAnnotationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/annotation/Annotation;Ljava/lang/String;)V

    .line 1021
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    :cond_4b
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_e

    .line 1007
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 1024
    :cond_52
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->isAspect()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1025
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->getDeclareAnnotations()[Lorg/aspectj/lang/reflect/DeclareAnnotation;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1027
    :cond_6b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/DeclareAnnotation;

    .line 1028
    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1029
    return-object v0

    :cond_75
    move-object v4, v0

    goto :goto_36
.end method

.method public getDeclareErrorOrWarnings()[Lorg/aspectj/lang/reflect/DeclareErrorOrWarning;
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 893
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 894
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_e
    if-ge v3, v6, :cond_89

    aget-object v1, v5, v3

    .line 896
    :try_start_12
    const-class v0, Lorg/aspectj/lang/annotation/DeclareWarning;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 897
    const-class v0, Lorg/aspectj/lang/annotation/DeclareWarning;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/DeclareWarning;

    .line 898
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 899
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 900
    new-instance v7, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/DeclareWarning;->value()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-direct {v7, v0, v1, v8, p0}, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/aspectj/lang/reflect/AjType;)V

    .line 901
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    :cond_4a
    :goto_4a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_e

    .line 903
    :cond_4e
    const-class v0, Lorg/aspectj/lang/annotation/DeclareError;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 904
    const-class v0, Lorg/aspectj/lang/annotation/DeclareError;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/DeclareError;

    .line 905
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 906
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 907
    new-instance v7, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/DeclareError;->value()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    invoke-direct {v7, v0, v1, v8, p0}, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/aspectj/lang/reflect/AjType;)V

    .line 908
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_86
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_86} :catch_87
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_86} :catch_c7

    goto :goto_4a

    .line 911
    :catch_87
    move-exception v0

    goto :goto_4a

    .line 917
    :cond_89
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v5, v3

    move v1, v2

    :goto_91
    if-ge v1, v5, :cond_bd

    aget-object v0, v3, v1

    .line 918
    const-class v2, Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 919
    const-class v2, Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;

    .line 920
    new-instance v2, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;->pointcut()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;->message()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcDeclareEoW;->isError()Z

    move-result v0

    invoke-direct {v2, v6, v7, v0, p0}, Lorg/aspectj/internal/lang/reflect/DeclareErrorOrWarningImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/aspectj/lang/reflect/AjType;)V

    .line 921
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    :cond_b9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_91

    .line 924
    :cond_bd
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/DeclareErrorOrWarning;

    .line 925
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 926
    return-object v0

    .line 913
    :catch_c7
    move-exception v0

    goto :goto_4a
.end method

.method public getDeclareParents()[Lorg/aspectj/lang/reflect/DeclareParents;
    .registers 9

    .prologue
    .line 933
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 934
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v4, :cond_3a

    aget-object v0, v3, v1

    .line 935
    const-class v5, Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 936
    const-class v5, Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;

    .line 937
    new-instance v5, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;->targetTypePattern()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;->parentTypes()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;->isExtends()Z

    move-result v0

    invoke-direct {v5, v6, v7, v0, p0}, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/aspectj/lang/reflect/AjType;)V

    .line 943
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    :cond_36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 946
    :cond_3a
    invoke-direct {p0, v2}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->addAnnotationStyleDeclareParents(Ljava/util/List;)V

    .line 947
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->isAspect()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 948
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->getDeclareParents()[Lorg/aspectj/lang/reflect/DeclareParents;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 950
    :cond_56
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/DeclareParents;

    .line 951
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 952
    return-object v0
.end method

.method public getDeclarePrecedence()[Lorg/aspectj/lang/reflect/DeclarePrecedence;
    .registers 7

    .prologue
    .line 1036
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    const-class v1, Lorg/aspectj/lang/annotation/DeclarePrecedence;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1040
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    const-class v1, Lorg/aspectj/lang/annotation/DeclarePrecedence;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/DeclarePrecedence;

    .line 1042
    new-instance v1, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/DeclarePrecedence;->value()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;-><init>(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;)V

    .line 1046
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    :cond_25
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_2e
    if-ge v1, v4, :cond_52

    aget-object v0, v3, v1

    .line 1051
    const-class v5, Lorg/aspectj/internal/lang/annotation/ajcDeclarePrecedence;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 1052
    const-class v5, Lorg/aspectj/internal/lang/annotation/ajcDeclarePrecedence;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/internal/lang/annotation/ajcDeclarePrecedence;

    .line 1053
    new-instance v5, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcDeclarePrecedence;->value()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, p0}, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;-><init>(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;)V

    .line 1057
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    :cond_4e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2e

    .line 1060
    :cond_52
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->isAspect()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1061
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->getDeclarePrecedence()[Lorg/aspectj/lang/reflect/DeclarePrecedence;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1063
    :cond_6b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/DeclarePrecedence;

    .line 1064
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1065
    return-object v0
.end method

.method public getDeclareSofts()[Lorg/aspectj/lang/reflect/DeclareSoft;
    .registers 8

    .prologue
    .line 976
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 977
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v4, :cond_36

    aget-object v0, v3, v1

    .line 978
    const-class v5, Lorg/aspectj/internal/lang/annotation/ajcDeclareSoft;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 979
    const-class v5, Lorg/aspectj/internal/lang/annotation/ajcDeclareSoft;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/internal/lang/annotation/ajcDeclareSoft;

    .line 980
    new-instance v5, Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcDeclareSoft;->pointcut()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcDeclareSoft;->exceptionType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, p0, v6, v0}, Lorg/aspectj/internal/lang/reflect/DeclareSoftImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 977
    :cond_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 988
    :cond_36
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->isAspect()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 989
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->getDeclareSofts()[Lorg/aspectj/lang/reflect/DeclareSoft;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 991
    :cond_4f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/DeclareSoft;

    .line 992
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 993
    return-object v0
.end method

.method public getDeclaredAdvice(Ljava/lang/String;)Lorg/aspectj/lang/reflect/Advice;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/aspectj/lang/reflect/NoSuchAdviceException;
        }
    .end annotation

    .prologue
    .line 524
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "use getAdvice(AdviceType...) instead for un-named advice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_10
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredAdvice:[Lorg/aspectj/lang/reflect/Advice;

    if-nez v0, :cond_17

    invoke-direct {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->initDeclaredAdvice()V

    .line 526
    :cond_17
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredAdvice:[Lorg/aspectj/lang/reflect/Advice;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v2, :cond_2d

    aget-object v3, v1, v0

    .line 527
    invoke-interface {v3}, Lorg/aspectj/lang/reflect/Advice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    return-object v3

    .line 526
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 529
    :cond_2d
    new-instance v0, Lorg/aspectj/lang/reflect/NoSuchAdviceException;

    invoke-direct {v0, p1}, Lorg/aspectj/lang/reflect/NoSuchAdviceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs getDeclaredAdvice([Lorg/aspectj/lang/reflect/AdviceKind;)[Lorg/aspectj/lang/reflect/Advice;
    .registers 4

    .prologue
    .line 443
    array-length v0, p1

    if-nez v0, :cond_e

    .line 444
    const-class v0, Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 449
    :goto_9
    invoke-direct {p0, v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getDeclaredAdvice(Ljava/util/Set;)[Lorg/aspectj/lang/reflect/Advice;

    move-result-object v0

    return-object v0

    .line 446
    :cond_e
    const-class v0, Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 447
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_9
.end method

.method public getDeclaredAjTypes()[Lorg/aspectj/lang/reflect/AjType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 228
    invoke-direct {p0, v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->toAjTypeArray([Ljava/lang/Class;)[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public varargs getDeclaredConstructor([Lorg/aspectj/lang/reflect/AjType;)Ljava/lang/reflect/Constructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-direct {p0, p1}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->toClassArray([Lorg/aspectj/lang/reflect/AjType;)[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ajc$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_18
    return-object v0
.end method

.method public getDeclaredFields()[Ljava/lang/reflect/Field;
    .registers 8

    .prologue
    .line 272
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 274
    array-length v3, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_33

    aget-object v4, v1, v0

    .line 275
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ajc$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_30

    const-class v5, Lorg/aspectj/lang/annotation/DeclareWarning;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_30

    const-class v5, Lorg/aspectj/lang/annotation/DeclareError;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 278
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 280
    :cond_33
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Field;

    .line 281
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 282
    return-object v0
.end method

.method public varargs getDeclaredITDConstructor(Lorg/aspectj/lang/reflect/AjType;[Lorg/aspectj/lang/reflect/AjType;)Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 693
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getDeclaredITDConstructors()[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    move-result-object v3

    .line 694
    array-length v4, v3

    move v2, v1

    :goto_7
    if-ge v2, v4, :cond_32

    aget-object v5, v3, v2

    .line 696
    :try_start_b
    invoke-interface {v5}, Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;->getTargetType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    .line 697
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 698
    invoke-interface {v5}, Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;->getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v6

    .line 699
    array-length v0, v6

    array-length v7, p2

    if-ne v0, v7, :cond_2b

    move v0, v1

    .line 700
    :goto_1e
    array-length v7, v6

    if-ge v0, v7, :cond_38

    .line 701
    aget-object v7, v6, v0

    aget-object v8, p2, v0

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_28} :catch_39

    move-result v7

    if-nez v7, :cond_2f

    .line 694
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 700
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 711
    :cond_32
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0

    .line 704
    :cond_38
    return-object v5

    .line 707
    :catch_39
    move-exception v0

    goto :goto_2b
.end method

.method public getDeclaredITDConstructors()[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    .registers 9

    .prologue
    .line 718
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    if-nez v0, :cond_54

    .line 719
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 720
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 721
    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    if-ge v1, v4, :cond_47

    aget-object v5, v3, v1

    .line 722
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "ajc$postInterConstructor"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 721
    :cond_22
    :goto_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 723
    :cond_26
    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 724
    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    .line 725
    new-instance v6, Lorg/aspectj/internal/lang/reflect/InterTypeConstructorDeclarationImpl;

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcITD;->targetType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v0

    invoke-direct {v6, p0, v7, v0, v5}, Lorg/aspectj/internal/lang/reflect/InterTypeConstructorDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/reflect/Method;)V

    .line 727
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 730
    :cond_47
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    .line 731
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 733
    :cond_54
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    return-object v0
.end method

.method public getDeclaredITDField(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;)Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 789
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getDeclaredITDFields()[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    move-result-object v1

    .line 790
    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_23

    aget-object v3, v1, v0

    .line 791
    invoke-interface {v3}, Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 793
    :try_start_14
    invoke-interface {v3}, Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;->getTargetType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v4

    .line 794
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_1b} :catch_1f

    move-result v4

    if-eqz v4, :cond_20

    return-object v3

    .line 795
    :catch_1f
    move-exception v3

    .line 790
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 800
    :cond_23
    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeclaredITDFields()[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    .registers 14

    .prologue
    const/4 v8, 0x0

    .line 807
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 808
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    if-nez v0, :cond_9d

    .line 809
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    .line 810
    array-length v11, v10

    move v7, v8

    :goto_12
    if-ge v7, v11, :cond_8d

    aget-object v12, v10, v7

    .line 811
    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 812
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ajc$interFieldInit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 810
    :cond_2a
    :goto_2a
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_12

    .line 813
    :cond_2e
    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/aspectj/internal/lang/annotation/ajcITD;

    .line 814
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 815
    const-string v2, "FieldInit"

    const-string v3, "FieldGetDispatch"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 818
    :try_start_43
    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 819
    new-instance v0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->targetType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v3

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/String;Lorg/aspectj/lang/reflect/AjType;Ljava/lang/reflect/Type;)V

    .line 823
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_43 .. :try_end_6e} :catch_6f

    goto :goto_2a

    .line 824
    :catch_6f
    move-exception v0

    .line 825
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find field get dispatch method for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_8d
    invoke-direct {p0, v9, v8}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->addAnnotationStyleITDFields(Ljava/util/List;Z)V

    .line 830
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    .line 831
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 833
    :cond_9d
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    return-object v0
.end method

.method public varargs getDeclaredITDMethod(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;[Lorg/aspectj/lang/reflect/AjType;)Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 560
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getDeclaredITDMethods()[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    move-result-object v3

    .line 561
    array-length v4, v3

    move v2, v1

    :goto_7
    if-ge v2, v4, :cond_3c

    aget-object v5, v3, v2

    .line 563
    :try_start_b
    invoke-interface {v5}, Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 561
    :cond_15
    :goto_15
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 564
    :cond_19
    invoke-interface {v5}, Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;->getTargetType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    .line 565
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 566
    invoke-interface {v5}, Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;->getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v6

    .line 567
    array-length v0, v6

    array-length v7, p3

    if-ne v0, v7, :cond_15

    move v0, v1

    .line 568
    :goto_2c
    array-length v7, v6

    if-ge v0, v7, :cond_42

    .line 569
    aget-object v7, v6, v0

    aget-object v8, p3, v0

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_36} :catch_43

    move-result v7

    if-eqz v7, :cond_15

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 579
    :cond_3c
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_42
    return-object v5

    .line 575
    :catch_43
    move-exception v0

    goto :goto_15
.end method

.method public getDeclaredITDMethods()[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 586
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    if-nez v0, :cond_5d

    .line 587
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 588
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    .line 589
    array-length v10, v9

    move v6, v7

    :goto_12
    if-ge v6, v10, :cond_4d

    aget-object v5, v9, v6

    .line 590
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ajc$interMethodDispatch1$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 589
    :cond_22
    :goto_22
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_12

    .line 591
    :cond_26
    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 592
    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/aspectj/internal/lang/annotation/ajcITD;

    .line 593
    new-instance v0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->targetType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v3

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->name()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/reflect/Method;)V

    .line 597
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 600
    :cond_4d
    invoke-direct {p0, v8, v7}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->addAnnotationStyleITDMethods(Ljava/util/List;Z)V

    .line 601
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    .line 602
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 604
    :cond_5d
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredITDMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    return-object v0
.end method

.method public varargs getDeclaredMethod(Ljava/lang/String;[Lorg/aspectj/lang/reflect/AjType;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-direct {p0, p2}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->toClassArray([Lorg/aspectj/lang/reflect/AjType;)[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 316
    invoke-direct {p0, v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isReallyAMethod(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-nez v1, :cond_16

    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_16
    return-object v0
.end method

.method public getDeclaredMethods()[Ljava/lang/reflect/Method;
    .registers 7

    .prologue
    .line 333
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 334
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 335
    array-length v3, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_1d

    aget-object v4, v1, v0

    .line 336
    invoke-direct {p0, v4}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isReallyAMethod(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 338
    :cond_1d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Method;

    .line 339
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 340
    return-object v0
.end method

.method public getDeclaredPointcut(Ljava/lang/String;)Lorg/aspectj/lang/reflect/Pointcut;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/aspectj/lang/reflect/NoSuchPointcutException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getDeclaredPointcuts()[Lorg/aspectj/lang/reflect/Pointcut;

    move-result-object v1

    .line 374
    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_18

    aget-object v3, v1, v0

    .line 375
    invoke-interface {v3}, Lorg/aspectj/lang/reflect/Pointcut;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    .line 374
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 376
    :cond_18
    new-instance v0, Lorg/aspectj/lang/reflect/NoSuchPointcutException;

    invoke-direct {v0, p1}, Lorg/aspectj/lang/reflect/NoSuchPointcutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeclaredPointcuts()[Lorg/aspectj/lang/reflect/Pointcut;
    .registers 6

    .prologue
    .line 393
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredPointcuts:[Lorg/aspectj/lang/reflect/Pointcut;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredPointcuts:[Lorg/aspectj/lang/reflect/Pointcut;

    .line 403
    :goto_6
    return-object v0

    .line 394
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 395
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 396
    array-length v3, v2

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v3, :cond_24

    aget-object v4, v2, v0

    .line 397
    invoke-direct {p0, v4}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->asPointcut(Ljava/lang/reflect/Method;)Lorg/aspectj/lang/reflect/Pointcut;

    move-result-object v4

    .line 398
    if-eqz v4, :cond_21

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 400
    :cond_24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/Pointcut;

    .line 401
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 402
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->declaredPointcuts:[Lorg/aspectj/lang/reflect/Pointcut;

    goto :goto_6
.end method

.method public getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_e

    new-instance v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    invoke-direct {v0, v1}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;-><init>(Ljava/lang/Class;)V

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getEnclosingConstructor()Ljava/lang/reflect/Constructor;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingMethod()Ljava/lang/reflect/Method;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingType()Lorg/aspectj/lang/reflect/AjType;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_e

    new-instance v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    invoke-direct {v0, v1}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;-><init>(Ljava/lang/Class;)V

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getEnumConstants()[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 1072
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ajc$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_18
    return-object v0
.end method

.method public getFields()[Ljava/lang/reflect/Field;
    .registers 8

    .prologue
    .line 298
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 299
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 300
    array-length v3, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_33

    aget-object v4, v1, v0

    .line 301
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ajc$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_30

    const-class v5, Lorg/aspectj/lang/annotation/DeclareWarning;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_30

    const-class v5, Lorg/aspectj/lang/annotation/DeclareError;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 304
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 306
    :cond_33
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Field;

    .line 307
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 308
    return-object v0
.end method

.method public getGenericSupertype()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public varargs getITDConstructor(Lorg/aspectj/lang/reflect/AjType;[Lorg/aspectj/lang/reflect/AjType;)Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 741
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getITDConstructors()[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    move-result-object v3

    .line 742
    array-length v4, v3

    move v2, v1

    :goto_7
    if-ge v2, v4, :cond_32

    aget-object v5, v3, v2

    .line 744
    :try_start_b
    invoke-interface {v5}, Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;->getTargetType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    .line 745
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 746
    invoke-interface {v5}, Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;->getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v6

    .line 747
    array-length v0, v6

    array-length v7, p2

    if-ne v0, v7, :cond_2b

    move v0, v1

    .line 748
    :goto_1e
    array-length v7, v6

    if-ge v0, v7, :cond_38

    .line 749
    aget-object v7, v6, v0

    aget-object v8, p2, v0

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_28} :catch_39

    move-result v7

    if-nez v7, :cond_2f

    .line 742
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 748
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 759
    :cond_32
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0

    .line 752
    :cond_38
    return-object v5

    .line 755
    :catch_39
    move-exception v0

    goto :goto_2b
.end method

.method public getITDConstructors()[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    .registers 9

    .prologue
    .line 766
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    if-nez v0, :cond_5e

    .line 767
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 768
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 769
    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    if-ge v1, v4, :cond_51

    aget-object v5, v3, v1

    .line 770
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "ajc$postInterConstructor"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 769
    :cond_22
    :goto_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 771
    :cond_26
    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 772
    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    .line 773
    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 774
    new-instance v6, Lorg/aspectj/internal/lang/reflect/InterTypeConstructorDeclarationImpl;

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcITD;->targetType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v0

    invoke-direct {v6, p0, v7, v0, v5}, Lorg/aspectj/internal/lang/reflect/InterTypeConstructorDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/reflect/Method;)V

    .line 776
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 779
    :cond_51
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    .line 780
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 782
    :cond_5e
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdCons:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    return-object v0
.end method

.method public getITDField(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;)Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 841
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getITDFields()[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    move-result-object v1

    .line 842
    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_23

    aget-object v3, v1, v0

    .line 843
    invoke-interface {v3}, Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 845
    :try_start_14
    invoke-interface {v3}, Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;->getTargetType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v4

    .line 846
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_1b} :catch_1f

    move-result v4

    if-eqz v4, :cond_20

    return-object v3

    .line 847
    :catch_1f
    move-exception v3

    .line 842
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 852
    :cond_23
    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getITDFields()[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;
    .registers 13

    .prologue
    .line 859
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 860
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    if-nez v0, :cond_aa

    .line 861
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    .line 862
    array-length v10, v9

    const/4 v0, 0x0

    move v7, v0

    :goto_12
    if-ge v7, v10, :cond_99

    aget-object v11, v9, v7

    .line 863
    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 864
    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/aspectj/internal/lang/annotation/ajcITD;

    .line 865
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ajc$interFieldInit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 862
    :cond_33
    :goto_33
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_12

    .line 866
    :cond_37
    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 867
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 868
    const-string v2, "FieldInit"

    const-string v3, "FieldGetDispatch"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 871
    :try_start_4d
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 872
    new-instance v0, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->targetType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v3

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/aspectj/internal/lang/reflect/InterTypeFieldDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/String;Lorg/aspectj/lang/reflect/AjType;Ljava/lang/reflect/Type;)V

    .line 876
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4d .. :try_end_7a} :catch_7b

    goto :goto_33

    .line 877
    :catch_7b
    move-exception v0

    .line 878
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find field get dispatch method for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 882
    :cond_99
    const/4 v0, 0x1

    invoke-direct {p0, v8, v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->addAnnotationStyleITDFields(Ljava/util/List;Z)V

    .line 883
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    .line 884
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 886
    :cond_aa
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdFields:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    return-object v0
.end method

.method public varargs getITDMethod(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;[Lorg/aspectj/lang/reflect/AjType;)Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 613
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getITDMethods()[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    move-result-object v3

    .line 614
    array-length v4, v3

    move v2, v1

    :goto_7
    if-ge v2, v4, :cond_3c

    aget-object v5, v3, v2

    .line 616
    :try_start_b
    invoke-interface {v5}, Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 614
    :cond_15
    :goto_15
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 617
    :cond_19
    invoke-interface {v5}, Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;->getTargetType()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    .line 618
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 619
    invoke-interface {v5}, Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;->getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v6

    .line 620
    array-length v0, v6

    array-length v7, p3

    if-ne v0, v7, :cond_15

    move v0, v1

    .line 621
    :goto_2c
    array-length v7, v6

    if-ge v0, v7, :cond_42

    .line 622
    aget-object v7, v6, v0

    aget-object v8, p3, v0

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_36} :catch_43

    move-result v7

    if-eqz v7, :cond_15

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 632
    :cond_3c
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_42
    return-object v5

    .line 628
    :catch_43
    move-exception v0

    goto :goto_15
.end method

.method public getITDMethods()[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .registers 11

    .prologue
    .line 639
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    if-nez v0, :cond_68

    .line 640
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 641
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    .line 642
    array-length v9, v8

    const/4 v0, 0x0

    move v6, v0

    :goto_12
    if-ge v6, v9, :cond_57

    aget-object v5, v8, v6

    .line 643
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ajc$interMethod$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 642
    :cond_22
    :goto_22
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_12

    .line 644
    :cond_26
    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 645
    const-class v0, Lorg/aspectj/internal/lang/annotation/ajcITD;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/aspectj/internal/lang/annotation/ajcITD;

    .line 646
    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 647
    new-instance v0, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->targetType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->modifiers()I

    move-result v3

    invoke-interface {v1}, Lorg/aspectj/internal/lang/annotation/ajcITD;->name()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/aspectj/internal/lang/reflect/InterTypeMethodDeclarationImpl;-><init>(Lorg/aspectj/lang/reflect/AjType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/reflect/Method;)V

    .line 651
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 654
    :cond_57
    const/4 v0, 0x1

    invoke-direct {p0, v7, v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->addAnnotationStyleITDMethods(Ljava/util/List;Z)V

    .line 655
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    .line 656
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 658
    :cond_68
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->itdMethods:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    return-object v0
.end method

.method public getInterfaces()[Lorg/aspectj/lang/reflect/AjType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 104
    invoke-direct {p0, v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->toAjTypeArray([Ljava/lang/Class;)[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    return-object v0
.end method

.method public getJavaClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public varargs getMethod(Ljava/lang/String;[Lorg/aspectj/lang/reflect/AjType;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-direct {p0, p2}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->toClassArray([Lorg/aspectj/lang/reflect/AjType;)[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 325
    invoke-direct {p0, v0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isReallyAMethod(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-nez v1, :cond_16

    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_16
    return-object v0
.end method

.method public getMethods()[Ljava/lang/reflect/Method;
    .registers 7

    .prologue
    .line 347
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 348
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 349
    array-length v3, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_1d

    aget-object v4, v1, v0

    .line 350
    invoke-direct {p0, v4}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isReallyAMethod(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 352
    :cond_1d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Method;

    .line 353
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 354
    return-object v0
.end method

.method public getModifiers()I
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/Package;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method public getPerClause()Lorg/aspectj/lang/reflect/PerClause;
    .registers 6

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isAspect()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 165
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    const-class v1, Lorg/aspectj/lang/annotation/Aspect;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/Aspect;

    .line 166
    invoke-interface {v0}, Lorg/aspectj/lang/annotation/Aspect;->value()Ljava/lang/String;

    move-result-object v1

    .line 167
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 168
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->isAspect()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 169
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getSupertype()Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->getPerClause()Lorg/aspectj/lang/reflect/PerClause;

    move-result-object v0

    .line 186
    :goto_2e
    return-object v0

    .line 171
    :cond_2f
    new-instance v0, Lorg/aspectj/internal/lang/reflect/PerClauseImpl;

    sget-object v1, Lorg/aspectj/lang/reflect/PerClauseKind;->SINGLETON:Lorg/aspectj/lang/reflect/PerClauseKind;

    invoke-direct {v0, v1}, Lorg/aspectj/internal/lang/reflect/PerClauseImpl;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;)V

    goto :goto_2e

    .line 172
    :cond_37
    const-string v0, "perthis("

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 173
    new-instance v0, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;

    sget-object v2, Lorg/aspectj/lang/reflect/PerClauseKind;->PERTHIS:Lorg/aspectj/lang/reflect/PerClauseKind;

    const-string v3, "perthis("

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V

    goto :goto_2e

    .line 174
    :cond_57
    const-string v0, "pertarget("

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 175
    new-instance v0, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;

    sget-object v2, Lorg/aspectj/lang/reflect/PerClauseKind;->PERTARGET:Lorg/aspectj/lang/reflect/PerClauseKind;

    const-string v3, "pertarget("

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V

    goto :goto_2e

    .line 176
    :cond_77
    const-string v0, "percflow("

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 177
    new-instance v0, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;

    sget-object v2, Lorg/aspectj/lang/reflect/PerClauseKind;->PERCFLOW:Lorg/aspectj/lang/reflect/PerClauseKind;

    const-string v3, "percflow("

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V

    goto :goto_2e

    .line 178
    :cond_97
    const-string v0, "percflowbelow("

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 179
    new-instance v0, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;

    sget-object v2, Lorg/aspectj/lang/reflect/PerClauseKind;->PERCFLOWBELOW:Lorg/aspectj/lang/reflect/PerClauseKind;

    const-string v3, "percflowbelow("

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 180
    :cond_b8
    const-string v0, "pertypewithin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 181
    new-instance v0, Lorg/aspectj/internal/lang/reflect/TypePatternBasedPerClauseImpl;

    sget-object v2, Lorg/aspectj/lang/reflect/PerClauseKind;->PERTYPEWITHIN:Lorg/aspectj/lang/reflect/PerClauseKind;

    const-string v3, "pertypewithin("

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/aspectj/internal/lang/reflect/TypePatternBasedPerClauseImpl;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 183
    :cond_d9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Per-clause not recognized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_f2
    const/4 v0, 0x0

    goto/16 :goto_2e
.end method

.method public getPointcut(Ljava/lang/String;)Lorg/aspectj/lang/reflect/Pointcut;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/aspectj/lang/reflect/NoSuchPointcutException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getPointcuts()[Lorg/aspectj/lang/reflect/Pointcut;

    move-result-object v1

    .line 384
    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_18

    aget-object v3, v1, v0

    .line 385
    invoke-interface {v3}, Lorg/aspectj/lang/reflect/Pointcut;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    .line 384
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 386
    :cond_18
    new-instance v0, Lorg/aspectj/lang/reflect/NoSuchPointcutException;

    invoke-direct {v0, p1}, Lorg/aspectj/lang/reflect/NoSuchPointcutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPointcuts()[Lorg/aspectj/lang/reflect/Pointcut;
    .registers 6

    .prologue
    .line 410
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->pointcuts:[Lorg/aspectj/lang/reflect/Pointcut;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->pointcuts:[Lorg/aspectj/lang/reflect/Pointcut;

    .line 420
    :goto_6
    return-object v0

    .line 411
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 412
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 413
    array-length v3, v2

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v3, :cond_24

    aget-object v4, v2, v0

    .line 414
    invoke-direct {p0, v4}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->asPointcut(Ljava/lang/reflect/Method;)Lorg/aspectj/lang/reflect/Pointcut;

    move-result-object v4

    .line 415
    if-eqz v4, :cond_21

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 417
    :cond_24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/Pointcut;

    .line 418
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 419
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->pointcuts:[Lorg/aspectj/lang/reflect/Pointcut;

    goto :goto_6
.end method

.method public getSupertype()Lorg/aspectj/lang/reflect/AjType;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/aspectj/lang/reflect/AjType",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 123
    if-nez v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    invoke-direct {v0, v1}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;-><init>(Ljava/lang/Class;)V

    goto :goto_9
.end method

.method public getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/Class",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1079
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1158
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isArray()Z
    .registers 2

    .prologue
    .line 1121
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    return v0
.end method

.method public isAspect()Z
    .registers 3

    .prologue
    .line 1135
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    const-class v1, Lorg/aspectj/lang/annotation/Aspect;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isEnum()Z
    .registers 2

    .prologue
    .line 1086
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    return v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 1093
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInterface()Z
    .registers 2

    .prologue
    .line 1100
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public isLocalClass()Z
    .registers 2

    .prologue
    .line 1107
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isAspect()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isMemberAspect()Z
    .registers 2

    .prologue
    .line 1142
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isAspect()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isMemberClass()Z
    .registers 2

    .prologue
    .line 1114
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isAspect()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isPrimitive()Z
    .registers 2

    .prologue
    .line 1128
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public isPrivileged()Z
    .registers 3

    .prologue
    .line 1146
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->isAspect()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->clazz:Ljava/lang/Class;

    const-class v1, Lorg/aspectj/internal/lang/annotation/ajcPrivileged;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1177
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
