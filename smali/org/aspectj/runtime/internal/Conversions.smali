.class public final Lorg/aspectj/runtime/internal/Conversions;
.super Ljava/lang/Object;
.source "Conversions.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static booleanObject(Z)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method

.method public static booleanValue(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 122
    if-nez p0, :cond_4

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_3
    return v0

    .line 124
    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    .line 125
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3

    .line 127
    :cond_f
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " can not be converted to boolean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteObject(B)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p0}, Ljava/lang/Byte;-><init>(B)V

    return-object v0
.end method

.method public static byteValue(Ljava/lang/Object;)B
    .registers 4

    .prologue
    .line 92
    if-nez p0, :cond_4

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_3
    return v0

    .line 94
    :cond_4
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_f

    .line 95
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    goto :goto_3

    .line 97
    :cond_f
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " can not be converted to byte"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static charObject(C)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p0}, Ljava/lang/Character;-><init>(C)V

    return-object v0
.end method

.method public static charValue(Ljava/lang/Object;)C
    .registers 4

    .prologue
    .line 112
    if-nez p0, :cond_4

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_3
    return v0

    .line 114
    :cond_4
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_f

    .line 115
    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    goto :goto_3

    .line 117
    :cond_f
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " can not be converted to char"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static doubleObject(D)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 41
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public static doubleValue(Ljava/lang/Object;)D
    .registers 4

    .prologue
    .line 82
    if-nez p0, :cond_5

    .line 83
    const-wide/16 v0, 0x0

    .line 85
    :goto_4
    return-wide v0

    .line 84
    :cond_5
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_10

    .line 85
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_4

    .line 87
    :cond_10
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " can not be converted to double"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static floatObject(F)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public static floatValue(Ljava/lang/Object;)F
    .registers 4

    .prologue
    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_3
    return v0

    .line 74
    :cond_4
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_f

    .line 75
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    goto :goto_3

    .line 77
    :cond_f
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " can not be converted to float"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intObject(I)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public static intValue(Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_3
    return v0

    .line 54
    :cond_4
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_f

    .line 55
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_3

    .line 57
    :cond_f
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " can not be converted to int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static longObject(J)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method public static longValue(Ljava/lang/Object;)J
    .registers 4

    .prologue
    .line 62
    if-nez p0, :cond_5

    .line 63
    const-wide/16 v0, 0x0

    .line 65
    :goto_4
    return-wide v0

    .line 64
    :cond_5
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_10

    .line 65
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_4

    .line 67
    :cond_10
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " can not be converted to long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static shortObject(S)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p0}, Ljava/lang/Short;-><init>(S)V

    return-object v0
.end method

.method public static shortValue(Ljava/lang/Object;)S
    .registers 4

    .prologue
    .line 102
    if-nez p0, :cond_4

    .line 103
    const/4 v0, 0x0

    .line 105
    :goto_3
    return v0

    .line 104
    :cond_4
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_f

    .line 105
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    goto :goto_3

    .line 107
    :cond_f
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " can not be converted to short"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static voidObject()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public static voidValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    .prologue
    .line 138
    if-nez p0, :cond_2

    .line 142
    :cond_2
    return-object p0
.end method
