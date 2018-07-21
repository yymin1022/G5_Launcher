.class public Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHostProxy;
.super Ljava/lang/Object;
.source "LgeAppWidgetExtViewHostProxy.java"

# interfaces
.implements Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewHost;


# static fields
.field private static final TAG:Ljava/lang/String; = "LgeAppWidgetExtViewHostProxy"


# instance fields
.field private mHost:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHostProxy;->mHost:Ljava/lang/Object;

    .line 17
    return-void
.end method


# virtual methods
.method public clientExpandAnimationFinished()V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHostProxy;->mHost:Ljava/lang/Object;

    const-string v1, "clientExpandAnimationFinished"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->callVoidMethodWithVoidParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public clientRestoreAnimationFinished()V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHostProxy;->mHost:Ljava/lang/Object;

    const-string v1, "clientRestoreAnimationFinished"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->callVoidMethodWithVoidParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public getExtendedWidgetHeight()I
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHostProxy;->mHost:Ljava/lang/Object;

    const-string v1, "getExtendedWidgetHeight"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->callIntMethodWithVoidParameter(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isExtViewAvailable()Z
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHostProxy;->mHost:Ljava/lang/Object;

    const-string v1, "isExtViewAvailable"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->callBooleanMethodWithVoidParameter(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isImprovedExtHost()Z
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHostProxy;->mHost:Ljava/lang/Object;

    const-string v1, "isImprovedExtHost"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->callBooleanMethodWithVoidParameter(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestExtView([Landroid/view/View;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 23
    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, [Landroid/view/View;

    aput-object v3, v0, v2

    .line 24
    iget-object v2, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHostProxy;->mHost:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "requestExtView"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_14} :catch_6c

    move-result-object v0

    .line 27
    const/4 v2, 0x1

    :try_start_16
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 28
    iget-object v3, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHostProxy;->mHost:Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_26} :catch_28
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_26} :catch_7d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_26} :catch_6c

    move-result v0

    .line 54
    :goto_27
    return v0

    .line 30
    :catch_28
    move-exception v0

    .line 31
    :try_start_29
    const-string v0, "LgeAppWidgetExtViewHostProxy"

    const-string v2, "requestExtView : handle requestExtView exception"

    invoke-static {v0, v2}, Lcom/lge/lgewidgetlib/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHostProxy;->mHost:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "cancelExtView"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_29 .. :try_end_3e} :catch_6c

    move-result-object v0

    .line 34
    :try_start_3f
    iget-object v2, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHostProxy;->mHost:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_47} :catch_60
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3f .. :try_end_47} :catch_6c

    .line 40
    :goto_47
    :try_start_47
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHostProxy;->mHost:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "notifyRequestExtViewException"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_55
    .catch Ljava/lang/NoSuchMethodException; {:try_start_47 .. :try_end_55} :catch_6c

    move-result-object v0

    .line 42
    :try_start_56
    iget-object v2, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHostProxy;->mHost:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5e} :catch_71
    .catch Ljava/lang/NoSuchMethodException; {:try_start_56 .. :try_end_5e} :catch_6c

    :goto_5e
    move v0, v1

    .line 54
    goto :goto_27

    .line 35
    :catch_60
    move-exception v0

    .line 36
    :try_start_61
    const-string v2, "LgeAppWidgetExtViewHostProxy"

    const-string v3, "requestExtView : handle cancelExtView exception"

    invoke-static {v2, v3}, Lcom/lge/lgewidgetlib/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_61 .. :try_end_6b} :catch_6c

    goto :goto_47

    .line 51
    :catch_6c
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_5e

    .line 43
    :catch_71
    move-exception v0

    .line 44
    :try_start_72
    const-string v2, "LgeAppWidgetExtViewHostProxy"

    const-string v3, "requestExtView : handle notifyRequestExtViewException exception"

    invoke-static {v2, v3}, Lcom/lge/lgewidgetlib/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5e

    .line 48
    :catch_7d
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_81
    .catch Ljava/lang/NoSuchMethodException; {:try_start_72 .. :try_end_81} :catch_6c

    goto :goto_5e
.end method

.method public requestExtViewDimming(ZI)V
    .registers 5

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHostProxy;->mHost:Ljava/lang/Object;

    const-string v1, "requestExtViewDimming"

    invoke-static {v0, v1, p1, p2}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->callVoidMethodWithBooleanIntegerParameter(Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 91
    return-void
.end method

.method public requestExtViewDimming(ZII)V
    .registers 6

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHostProxy;->mHost:Ljava/lang/Object;

    .line 96
    const-string v1, "requestExtViewDimming"

    .line 95
    invoke-static {v0, v1, p1, p2, p3}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->callVoidMethodWithBooleanIntegerIntegerParameter(Ljava/lang/Object;Ljava/lang/String;ZII)V

    .line 97
    return-void
.end method

.method public requestNormalView()V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHostProxy;->mHost:Ljava/lang/Object;

    const-string v1, "requestNormalView"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->callVoidMethodWithVoidParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    return-void
.end method
