.class public Lcom/lge/lgewidgetlib/LgeReflectionUtil;
.super Ljava/lang/Object;
.source "LgeReflectionUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LgeReflectionUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callBooleanMethodWithVoidParameter(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 260
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 261
    const/4 v1, 0x0

    .line 260
    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_8} :catch_22

    move-result-object v0

    .line 263
    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_13
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_13} :catch_22

    move-result v0

    .line 272
    :goto_14
    return v0

    .line 264
    :catch_15
    move-exception v0

    .line 265
    :try_start_16
    const-string v1, "LgeReflectionUtil"

    invoke-static {v1, p1, v0}, Lcom/lge/lgewidgetlib/WLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 272
    :goto_1b
    const/4 v0, 0x0

    goto :goto_14

    .line 266
    :catch_1d
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_1b

    .line 269
    :catch_22
    move-exception v0

    .line 270
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b
.end method

.method public static callIntMethodWithVoidParameter(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 242
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 243
    const/4 v1, 0x0

    .line 242
    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_8} :catch_22

    move-result-object v0

    .line 245
    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_13
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_13} :catch_22

    move-result v0

    .line 254
    :goto_14
    return v0

    .line 246
    :catch_15
    move-exception v0

    .line 247
    :try_start_16
    const-string v1, "LgeReflectionUtil"

    invoke-static {v1, p1, v0}, Lcom/lge/lgewidgetlib/WLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 254
    :goto_1b
    const/4 v0, 0x0

    goto :goto_14

    .line 248
    :catch_1d
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_1b

    .line 251
    :catch_22
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b
.end method

.method public static callVoidMethodWithBooleanIntegerIntegerParameter(Ljava/lang/Object;Ljava/lang/String;ZII)V
    .registers 9

    .prologue
    .line 298
    const/4 v0, 0x3

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_19} :catch_3f

    move-result-object v0

    .line 302
    const/4 v1, 0x3

    :try_start_1b
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1b .. :try_end_35} :catch_36
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_35} :catch_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1b .. :try_end_35} :catch_3f

    .line 312
    :goto_35
    return-void

    .line 304
    :catch_36
    move-exception v0

    .line 305
    :try_start_37
    const-string v1, "LgeReflectionUtil"

    const-string v2, "requestExtViewDimming"

    invoke-static {v1, v2, v0}, Lcom/lge/lgewidgetlib/WLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_37 .. :try_end_3e} :catch_3f

    goto :goto_35

    .line 309
    :catch_3f
    move-exception v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_35

    .line 306
    :catch_44
    move-exception v0

    .line 307
    :try_start_45
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_48
    .catch Ljava/lang/NoSuchMethodException; {:try_start_45 .. :try_end_48} :catch_3f

    goto :goto_35
.end method

.method public static callVoidMethodWithBooleanIntegerParameter(Ljava/lang/Object;Ljava/lang/String;ZI)V
    .registers 8

    .prologue
    .line 278
    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 279
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_14} :catch_33

    move-result-object v0

    .line 282
    const/4 v1, 0x2

    :try_start_16
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_29} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_29} :catch_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_29} :catch_33

    .line 292
    :goto_29
    return-void

    .line 284
    :catch_2a
    move-exception v0

    .line 285
    :try_start_2b
    const-string v1, "LgeReflectionUtil"

    const-string v2, "requestExtViewDimming"

    invoke-static {v1, v2, v0}, Lcom/lge/lgewidgetlib/WLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2b .. :try_end_32} :catch_33

    goto :goto_29

    .line 289
    :catch_33
    move-exception v0

    .line 290
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_29

    .line 286
    :catch_38
    move-exception v0

    .line 287
    :try_start_39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_39 .. :try_end_3c} :catch_33

    goto :goto_29
.end method

.method public static callVoidMethodWithVoidParameter(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 226
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 227
    const/4 v1, 0x0

    .line 226
    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_8} :catch_17

    move-result-object v0

    .line 229
    const/4 v1, 0x0

    :try_start_a
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_31
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_f} :catch_17

    .line 238
    :goto_f
    return-void

    .line 230
    :catch_10
    move-exception v0

    .line 231
    :try_start_11
    const-string v1, "LgeReflectionUtil"

    invoke-static {v1, p1, v0}, Lcom/lge/lgewidgetlib/WLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_f

    .line 235
    :catch_17
    move-exception v0

    .line 236
    const-string v0, "LgeReflectionUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " method not exist on client"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 232
    :catch_31
    move-exception v0

    .line 233
    :try_start_32
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_32 .. :try_end_38} :catch_17
.end method

.method public static getIntField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_b} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_4b

    move-result v0

    return v0

    .line 71
    :catch_d
    move-exception v0

    .line 73
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPrivateLongField name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 75
    :catch_2c
    move-exception v0

    .line 77
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPrivateLongField name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 79
    :catch_4b
    move-exception v0

    .line 81
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPrivateLongField name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getLgeCustomView(Ljava/lang/String;[Ljava/lang/Class;Landroid/view/View;)Landroid/view/View;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-static {p2, p0, p1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->isTargetCutsomView(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 210
    :goto_7
    return-object p2

    .line 198
    :cond_8
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_28

    .line 199
    check-cast p2, Landroid/view/ViewGroup;

    .line 200
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 201
    const/4 v0, 0x0

    move v2, v0

    :goto_14
    if-lt v2, v3, :cond_18

    move-object p2, v1

    .line 208
    goto :goto_7

    .line 202
    :cond_18
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 203
    invoke-static {p0, p1, v0}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getLgeCustomView(Ljava/lang/String;[Ljava/lang/Class;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_24

    move-object p2, v0

    .line 205
    goto :goto_7

    .line 201
    :cond_24
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    :cond_28
    move-object p2, v1

    .line 210
    goto :goto_7
.end method

.method public static getLongField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Long;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 16
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 17
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_f} :catch_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_f} :catch_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_f} :catch_4f

    move-result-object v0

    return-object v0

    .line 19
    :catch_11
    move-exception v0

    .line 22
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPrivateLongField name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 25
    :catch_30
    move-exception v0

    .line 28
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPrivateLongField name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 31
    :catch_4f
    move-exception v0

    .line 34
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPrivateLongField name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getPrivateBooleanField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 110
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 111
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_b} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_4b

    move-result v0

    return v0

    .line 113
    :catch_d
    move-exception v0

    .line 115
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPrivateBooleanField name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 117
    :catch_2c
    move-exception v0

    .line 119
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPrivateBooleanField name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 121
    :catch_4b
    move-exception v0

    .line 123
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPrivateBooleanField name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 153
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 154
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_b} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_4b

    move-result-object v0

    .line 157
    return-object v0

    .line 158
    :catch_d
    move-exception v0

    .line 160
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NoSuchFieldException, getPrivateField failed, field = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 162
    :catch_2c
    move-exception v0

    .line 164
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IllegalArgumentException, getPrivateField failed, field = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 166
    :catch_4b
    move-exception v0

    .line 168
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IllegalAccessException, getPrivateField failed, field = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static isTargetCutsomView(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 217
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_7} :catch_9

    .line 218
    const/4 v0, 0x1

    .line 220
    :goto_8
    return v0

    .line 219
    :catch_9
    move-exception v0

    .line 220
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static setIntField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 89
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 91
    invoke-virtual {v0, p1, p3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_4a

    .line 105
    return-void

    .line 92
    :catch_c
    move-exception v0

    .line 94
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPrivateLongField name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 96
    :catch_2b
    move-exception v0

    .line 98
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPrivateLongField name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :catch_4a
    move-exception v0

    .line 102
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPrivateLongField name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setLongField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 44
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 45
    invoke-virtual {v0, p1, p3, p4}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_4a

    .line 63
    return-void

    .line 46
    :catch_c
    move-exception v0

    .line 49
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPrivateLongField name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 52
    :catch_2b
    move-exception v0

    .line 55
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPrivateLongField name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 58
    :catch_4a
    move-exception v0

    .line 60
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPrivateLongField name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setPrivateBooleanField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 132
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 133
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 134
    invoke-virtual {v0, p1, p3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_4a

    .line 148
    return-void

    .line 135
    :catch_c
    move-exception v0

    .line 137
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPrivateBooleanField name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 139
    :catch_2b
    move-exception v0

    .line 141
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPrivateBooleanField name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 143
    :catch_4a
    move-exception v0

    .line 145
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPrivateBooleanField name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 177
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 178
    invoke-virtual {v0, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_4a

    .line 193
    return-void

    .line 180
    :catch_c
    move-exception v0

    .line 182
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPrivateField failed, field = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 184
    :catch_2b
    move-exception v0

    .line 186
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPrivateField failed, field = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 188
    :catch_4a
    move-exception v0

    .line 190
    const-string v1, "LgeReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPrivateField failed, field = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
