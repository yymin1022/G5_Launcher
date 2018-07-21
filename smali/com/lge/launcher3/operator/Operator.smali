.class public Lcom/lge/launcher3/operator/Operator;
.super Ljava/lang/Object;
.source "Operator.java"


# static fields
.field private static sConfiguration:Lcom/lge/launcher3/operator/OperatorConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createConfiguration()Lcom/lge/launcher3/operator/OperatorConfiguration;
    .registers 2

    .prologue
    .line 28
    sget-object v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 29
    new-instance v0, Lcom/lge/launcher3/operator/AtntConfiguration;

    invoke-direct {v0}, Lcom/lge/launcher3/operator/AtntConfiguration;-><init>()V

    .line 31
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static setup(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 12
    sget-object v0, Lcom/lge/launcher3/operator/Operator;->sConfiguration:Lcom/lge/launcher3/operator/OperatorConfiguration;

    if-nez v0, :cond_a

    .line 13
    invoke-static {}, Lcom/lge/launcher3/operator/Operator;->createConfiguration()Lcom/lge/launcher3/operator/OperatorConfiguration;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/operator/Operator;->sConfiguration:Lcom/lge/launcher3/operator/OperatorConfiguration;

    .line 16
    :cond_a
    sget-object v0, Lcom/lge/launcher3/operator/Operator;->sConfiguration:Lcom/lge/launcher3/operator/OperatorConfiguration;

    if-eqz v0, :cond_13

    .line 17
    sget-object v0, Lcom/lge/launcher3/operator/Operator;->sConfiguration:Lcom/lge/launcher3/operator/OperatorConfiguration;

    invoke-interface {v0, p0}, Lcom/lge/launcher3/operator/OperatorConfiguration;->setup(Landroid/app/Activity;)V

    .line 19
    :cond_13
    return-void
.end method

.method public static teardown()V
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/lge/launcher3/operator/Operator;->sConfiguration:Lcom/lge/launcher3/operator/OperatorConfiguration;

    if-eqz v0, :cond_9

    .line 23
    sget-object v0, Lcom/lge/launcher3/operator/Operator;->sConfiguration:Lcom/lge/launcher3/operator/OperatorConfiguration;

    invoke-interface {v0}, Lcom/lge/launcher3/operator/OperatorConfiguration;->teardown()V

    .line 25
    :cond_9
    return-void
.end method
