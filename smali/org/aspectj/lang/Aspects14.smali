.class public Lorg/aspectj/lang/Aspects14;
.super Ljava/lang/Object;
.source "Aspects14.java"


# static fields
.field private static final ASPECTOF:Ljava/lang/String; = "aspectOf"

.field private static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

.field private static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field private static final HASASPECT:Ljava/lang/String; = "hasAspect"

.field private static final PEROBJECT_CLASS_ARRAY:[Ljava/lang/Class;

.field private static final PERTYPEWITHIN_CLASS_ARRAY:[Ljava/lang/Class;

.field static class$java$lang$Class:Ljava/lang/Class;

.field static class$java$lang$Object:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-array v0, v2, [Ljava/lang/Class;

    sput-object v0, Lorg/aspectj/lang/Aspects14;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 30
    new-array v1, v3, [Ljava/lang/Class;

    sget-object v0, Lorg/aspectj/lang/Aspects14;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_2f

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lorg/aspectj/lang/Aspects14;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/aspectj/lang/Aspects14;->class$java$lang$Object:Ljava/lang/Class;

    :goto_14
    aput-object v0, v1, v2

    sput-object v1, Lorg/aspectj/lang/Aspects14;->PEROBJECT_CLASS_ARRAY:[Ljava/lang/Class;

    .line 31
    new-array v1, v3, [Ljava/lang/Class;

    sget-object v0, Lorg/aspectj/lang/Aspects14;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v0, :cond_32

    const-string v0, "java.lang.Class"

    invoke-static {v0}, Lorg/aspectj/lang/Aspects14;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/aspectj/lang/Aspects14;->class$java$lang$Class:Ljava/lang/Class;

    :goto_26
    aput-object v0, v1, v2

    sput-object v1, Lorg/aspectj/lang/Aspects14;->PERTYPEWITHIN_CLASS_ARRAY:[Ljava/lang/Class;

    .line 32
    new-array v0, v2, [Ljava/lang/Object;

    sput-object v0, Lorg/aspectj/lang/Aspects14;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    return-void

    .line 30
    :cond_2f
    sget-object v0, Lorg/aspectj/lang/Aspects14;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_14

    .line 31
    :cond_32
    sget-object v0, Lorg/aspectj/lang/Aspects14;->class$java$lang$Class:Ljava/lang/Class;

    goto :goto_26
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aspectOf(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/aspectj/lang/NoAspectBoundException;
        }
    .end annotation

    .prologue
    .line 45
    :try_start_0
    invoke-static {p0}, Lorg/aspectj/lang/Aspects14;->getSingletonOrThreadAspectOf(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lorg/aspectj/lang/Aspects14;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_a} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_17

    move-result-object v0

    return-object v0

    .line 46
    :catch_c
    move-exception v0

    .line 48
    new-instance v1, Lorg/aspectj/lang/NoAspectBoundException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 49
    :catch_17
    move-exception v0

    .line 50
    new-instance v1, Lorg/aspectj/lang/NoAspectBoundException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static aspectOf(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/aspectj/lang/NoAspectBoundException;
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    invoke-static {p0}, Lorg/aspectj/lang/Aspects14;->getPerTypeWithinAspectOf(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_1b

    move-result-object v0

    return-object v0

    .line 82
    :catch_10
    move-exception v0

    .line 84
    new-instance v1, Lorg/aspectj/lang/NoAspectBoundException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 85
    :catch_1b
    move-exception v0

    .line 86
    new-instance v1, Lorg/aspectj/lang/NoAspectBoundException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static aspectOf(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/aspectj/lang/NoAspectBoundException;
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    invoke-static {p0}, Lorg/aspectj/lang/Aspects14;->getPerObjectAspectOf(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_1b

    move-result-object v0

    return-object v0

    .line 64
    :catch_10
    move-exception v0

    .line 66
    new-instance v1, Lorg/aspectj/lang/NoAspectBoundException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 67
    :catch_1b
    move-exception v0

    .line 68
    new-instance v1, Lorg/aspectj/lang/NoAspectBoundException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static checkAspectOf(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 154
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 157
    :cond_1e
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".aspectOf(..) is not accessible public static"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_3b
    return-object p0
.end method

.method private static checkHasAspect(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 181
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 184
    :cond_1e
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".hasAspect(..) is not accessible public static"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_3b
    return-object p0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    .prologue
    .line 30
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

.method private static getPerObjectAspectOf(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 143
    const-string v0, "aspectOf"

    sget-object v1, Lorg/aspectj/lang/Aspects14;->PEROBJECT_CLASS_ARRAY:[Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 144
    invoke-static {v0, p0}, Lorg/aspectj/lang/Aspects14;->checkAspectOf(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static getPerObjectHasAspect(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 170
    const-string v0, "hasAspect"

    sget-object v1, Lorg/aspectj/lang/Aspects14;->PEROBJECT_CLASS_ARRAY:[Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 171
    invoke-static {v0, p0}, Lorg/aspectj/lang/Aspects14;->checkHasAspect(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static getPerTypeWithinAspectOf(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 148
    const-string v0, "aspectOf"

    sget-object v1, Lorg/aspectj/lang/Aspects14;->PERTYPEWITHIN_CLASS_ARRAY:[Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 149
    invoke-static {v0, p0}, Lorg/aspectj/lang/Aspects14;->checkAspectOf(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static getPerTypeWithinHasAspect(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 175
    const-string v0, "hasAspect"

    sget-object v1, Lorg/aspectj/lang/Aspects14;->PERTYPEWITHIN_CLASS_ARRAY:[Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 176
    invoke-static {v0, p0}, Lorg/aspectj/lang/Aspects14;->checkHasAspect(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static getSingletonOrThreadAspectOf(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 138
    const-string v0, "aspectOf"

    sget-object v1, Lorg/aspectj/lang/Aspects14;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 139
    invoke-static {v0, p0}, Lorg/aspectj/lang/Aspects14;->checkAspectOf(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static getSingletonOrThreadHasAspect(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 165
    const-string v0, "hasAspect"

    sget-object v1, Lorg/aspectj/lang/Aspects14;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 166
    invoke-static {v0, p0}, Lorg/aspectj/lang/Aspects14;->checkHasAspect(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static hasAspect(Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/aspectj/lang/NoAspectBoundException;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    invoke-static {p0}, Lorg/aspectj/lang/Aspects14;->getSingletonOrThreadHasAspect(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lorg/aspectj/lang/Aspects14;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    move-result v0

    .line 101
    :goto_11
    return v0

    .line 100
    :catch_12
    move-exception v0

    .line 101
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static hasAspect(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/aspectj/lang/NoAspectBoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 129
    :try_start_1
    invoke-static {p0}, Lorg/aspectj/lang/Aspects14;->getPerTypeWithinHasAspect(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_17

    move-result v0

    .line 131
    :goto_16
    return v0

    .line 130
    :catch_17
    move-exception v0

    move v0, v1

    .line 131
    goto :goto_16
.end method

.method public static hasAspect(Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/aspectj/lang/NoAspectBoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 114
    :try_start_1
    invoke-static {p0}, Lorg/aspectj/lang/Aspects14;->getPerObjectHasAspect(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_17

    move-result v0

    .line 116
    :goto_16
    return v0

    .line 115
    :catch_17
    move-exception v0

    move v0, v1

    .line 116
    goto :goto_16
.end method
