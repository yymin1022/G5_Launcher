.class public Lorg/aspectj/internal/lang/reflect/StringToType;
.super Ljava/lang/Object;
.source "StringToType.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commaSeparatedListToTypeArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/reflect/Type;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v0, ","

    invoke-direct {v2, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v3, v0, [Ljava/lang/reflect/Type;

    .line 31
    const/4 v0, 0x0

    .line 33
    :goto_e
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 34
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 35
    add-int/lit8 v1, v0, 0x1

    invoke-static {v4, p1}, Lorg/aspectj/internal/lang/reflect/StringToType;->stringToType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    aput-object v4, v3, v0

    move v0, v1

    .line 36
    goto :goto_e

    .line 37
    :cond_26
    return-object v3
.end method

.method private static makeParameterizedType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 62
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 63
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 65
    const/16 v2, 0x3e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 66
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0, p1}, Lorg/aspectj/internal/lang/reflect/StringToType;->commaSeparatedListToTypeArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 68
    new-instance v2, Lorg/aspectj/internal/lang/reflect/StringToType$1;

    invoke-direct {v2, v0, v1}, Lorg/aspectj/internal/lang/reflect/StringToType$1;-><init>([Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    return-object v2
.end method

.method public static stringToType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 43
    :try_start_1
    const-string v1, "<"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    .line 44
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    .line 53
    :goto_17
    return-object v0

    .line 46
    :cond_18
    invoke-static {p0, p1}, Lorg/aspectj/internal/lang/reflect/StringToType;->makeParameterizedType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1b} :catch_1d

    move-result-object v0

    goto :goto_17

    .line 48
    :catch_1d
    move-exception v1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 51
    :goto_22
    array-length v2, v1

    if-ge v0, v2, :cond_37

    .line 52
    aget-object v2, v1, v0

    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 53
    aget-object v0, v1, v0

    goto :goto_17

    .line 51
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 56
    :cond_37
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
