.class public Lorg/aspectj/internal/lang/reflect/AdviceImpl;
.super Ljava/lang/Object;
.source "AdviceImpl.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/Advice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aspectj/internal/lang/reflect/AdviceImpl$1;
    }
.end annotation


# static fields
.field private static final AJC_INTERNAL:Ljava/lang/String; = "org.aspectj.runtime.internal"


# instance fields
.field private final adviceMethod:Ljava/lang/reflect/Method;

.field private exceptionTypes:[Lorg/aspectj/lang/reflect/AjType;

.field private genericParameterTypes:[Ljava/lang/reflect/Type;

.field private hasExtraParam:Z

.field private final kind:Lorg/aspectj/lang/reflect/AdviceKind;

.field private parameterTypes:[Lorg/aspectj/lang/reflect/AjType;

.field private pointcutExpression:Lorg/aspectj/lang/reflect/PointcutExpression;


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;)V
    .registers 5

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->hasExtraParam:Z

    .line 41
    iput-object p3, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->kind:Lorg/aspectj/lang/reflect/AdviceKind;

    .line 42
    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->adviceMethod:Ljava/lang/reflect/Method;

    .line 43
    new-instance v0, Lorg/aspectj/internal/lang/reflect/PointcutExpressionImpl;

    invoke-direct {v0, p2}, Lorg/aspectj/internal/lang/reflect/PointcutExpressionImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->pointcutExpression:Lorg/aspectj/lang/reflect/PointcutExpression;

    .line 44
    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->hasExtraParam:Z

    .line 49
    return-void
.end method


# virtual methods
.method public getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->adviceMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionTypes()[Lorg/aspectj/lang/reflect/AjType;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->exceptionTypes:[Lorg/aspectj/lang/reflect/AjType;

    if-nez v0, :cond_20

    .line 93
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->adviceMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 94
    array-length v0, v1

    new-array v0, v0, [Lorg/aspectj/lang/reflect/AjType;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->exceptionTypes:[Lorg/aspectj/lang/reflect/AjType;

    .line 95
    const/4 v0, 0x0

    :goto_10
    array-length v2, v1

    if-ge v0, v2, :cond_20

    .line 96
    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->exceptionTypes:[Lorg/aspectj/lang/reflect/AjType;

    aget-object v3, v1, v0

    invoke-static {v3}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v3

    aput-object v3, v2, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 99
    :cond_20
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->exceptionTypes:[Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->genericParameterTypes:[Ljava/lang/reflect/Type;

    if-nez v0, :cond_58

    .line 57
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->adviceMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 59
    array-length v5, v4

    move v3, v2

    move v1, v2

    :goto_e
    if-ge v3, v5, :cond_2f

    aget-object v0, v4, v3

    .line 60
    instance-of v6, v0, Ljava/lang/Class;

    if-eqz v6, :cond_5b

    .line 61
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "org.aspectj.runtime.internal"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    add-int/lit8 v0, v1, 0x1

    .line 59
    :goto_2a
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_e

    .line 64
    :cond_2f
    array-length v0, v4

    sub-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->genericParameterTypes:[Ljava/lang/reflect/Type;

    move v1, v2

    .line 65
    :goto_36
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->genericParameterTypes:[Ljava/lang/reflect/Type;

    array-length v0, v0

    if-ge v1, v0, :cond_58

    .line 66
    aget-object v0, v4, v1

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_51

    .line 67
    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->genericParameterTypes:[Ljava/lang/reflect/Type;

    aget-object v0, v4, v1

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v0

    aput-object v0, v2, v1

    .line 65
    :goto_4d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_36

    .line 69
    :cond_51
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->genericParameterTypes:[Ljava/lang/reflect/Type;

    aget-object v2, v4, v1

    aput-object v2, v0, v1

    goto :goto_4d

    .line 73
    :cond_58
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->genericParameterTypes:[Ljava/lang/reflect/Type;

    return-object v0

    :cond_5b
    move v0, v1

    goto :goto_2a
.end method

.method public getKind()Lorg/aspectj/lang/reflect/AdviceKind;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->kind:Lorg/aspectj/lang/reflect/AdviceKind;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 107
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->adviceMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string v1, "ajc$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 109
    const-string v1, ""

    .line 110
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->adviceMethod:Ljava/lang/reflect/Method;

    const-class v2, Lorg/aspectj/lang/annotation/AdviceName;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/AdviceName;

    .line 111
    if-eqz v0, :cond_21

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/AdviceName;->value()Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_20
    :goto_20
    return-object v0

    :cond_21
    move-object v0, v1

    goto :goto_20
.end method

.method public getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->parameterTypes:[Lorg/aspectj/lang/reflect/AjType;

    if-nez v0, :cond_41

    .line 78
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->adviceMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 80
    array-length v4, v3

    move v2, v1

    move v0, v1

    :goto_e
    if-ge v2, v4, :cond_27

    aget-object v5, v3, v2

    .line 81
    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "org.aspectj.runtime.internal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    add-int/lit8 v0, v0, 0x1

    .line 80
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 83
    :cond_27
    array-length v2, v3

    sub-int v0, v2, v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/AjType;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->parameterTypes:[Lorg/aspectj/lang/reflect/AjType;

    move v0, v1

    .line 84
    :goto_2f
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->parameterTypes:[Lorg/aspectj/lang/reflect/AjType;

    array-length v1, v1

    if-ge v0, v1, :cond_41

    .line 85
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->parameterTypes:[Lorg/aspectj/lang/reflect/AjType;

    aget-object v2, v3, v0

    invoke-static {v2}, Lorg/aspectj/lang/reflect/AjTypeSystem;->getAjType(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v2

    aput-object v2, v1, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 88
    :cond_41
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->parameterTypes:[Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public getPointcutExpression()Lorg/aspectj/lang/reflect/PointcutExpression;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->pointcutExpression:Lorg/aspectj/lang/reflect/PointcutExpression;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 121
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    .line 123
    const-string v0, "@AdviceName(\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v0, "\") "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    :cond_21
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getKind()Lorg/aspectj/lang/reflect/AdviceKind;

    move-result-object v0

    sget-object v2, Lorg/aspectj/lang/reflect/AdviceKind;->AROUND:Lorg/aspectj/lang/reflect/AdviceKind;

    if-ne v0, v2, :cond_3b

    .line 128
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->adviceMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :cond_3b
    sget-object v0, Lorg/aspectj/internal/lang/reflect/AdviceImpl$1;->$SwitchMap$org$aspectj$lang$reflect$AdviceKind:[I

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getKind()Lorg/aspectj/lang/reflect/AdviceKind;

    move-result-object v2

    invoke-virtual {v2}, Lorg/aspectj/lang/reflect/AdviceKind;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_11c

    .line 148
    :goto_4a
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getParameterTypes()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v4

    .line 149
    array-length v0, v4

    .line 150
    iget-boolean v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->hasExtraParam:Z

    if-eqz v2, :cond_55

    add-int/lit8 v0, v0, -0x1

    :cond_55
    move v2, v1

    .line 151
    :goto_56
    if-ge v2, v0, :cond_8b

    .line 152
    aget-object v5, v4, v2

    invoke-interface {v5}, Lorg/aspectj/lang/reflect/AjType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v0, :cond_6a

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 133
    :pswitch_6d
    const-string v0, "after("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 136
    :pswitch_73
    const-string v0, "after("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 139
    :pswitch_79
    const-string v0, "after("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 142
    :pswitch_7f
    const-string v0, "around("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 145
    :pswitch_85
    const-string v0, "before("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 155
    :cond_8b
    const-string v2, ") "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    sget-object v2, Lorg/aspectj/internal/lang/reflect/AdviceImpl$1;->$SwitchMap$org$aspectj$lang$reflect$AdviceKind:[I

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getKind()Lorg/aspectj/lang/reflect/AdviceKind;

    move-result-object v5

    invoke-virtual {v5}, Lorg/aspectj/lang/reflect/AdviceKind;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_12a

    .line 173
    :cond_9f
    :goto_9f
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getExceptionTypes()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v2

    .line 174
    array-length v0, v2

    if-lez v0, :cond_107

    .line 175
    const-string v0, "throws "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 176
    :goto_ac
    array-length v1, v2

    if-ge v0, v1, :cond_102

    .line 177
    aget-object v1, v2, v0

    invoke-interface {v1}, Lorg/aspectj/lang/reflect/AjType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    add-int/lit8 v1, v0, 0x1

    array-length v4, v2

    if-ge v1, v4, :cond_c2

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_c2
    add-int/lit8 v0, v0, 0x1

    goto :goto_ac

    .line 158
    :pswitch_c5
    const-string v2, "returning"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    iget-boolean v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->hasExtraParam:Z

    if-eqz v2, :cond_e3

    .line 160
    const-string v2, "("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    add-int/lit8 v2, v0, -0x1

    aget-object v2, v4, v2

    invoke-interface {v2}, Lorg/aspectj/lang/reflect/AjType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    const-string v2, ") "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    :cond_e3
    :pswitch_e3
    const-string v2, "throwing"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    iget-boolean v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->hasExtraParam:Z

    if-eqz v2, :cond_9f

    .line 167
    const-string v2, "("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    add-int/lit8 v0, v0, -0x1

    aget-object v0, v4, v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const-string v0, ") "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9f

    .line 180
    :cond_102
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    :cond_107
    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->getPointcutExpression()Lorg/aspectj/lang/reflect/PointcutExpression;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/PointcutExpression;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_73
        :pswitch_79
        :pswitch_7f
        :pswitch_85
    .end packed-switch

    .line 156
    :pswitch_data_12a
    .packed-switch 0x2
        :pswitch_c5
        :pswitch_e3
    .end packed-switch
.end method
