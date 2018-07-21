.class public Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;
.super Ljava/lang/Object;
.source "LGHiddenMenuUtil.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/debug/LGHiddenMenuUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "functionDataManager"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x60748ba04d9f8182L


# instance fields
.field private final mFeatureArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->mFeatureArray:Ljava/util/ArrayList;

    .line 38
    return-void
.end method


# virtual methods
.method public addtData(Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;)V
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->mFeatureArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public getArray()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->mFeatureArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getData(I)Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->mFeatureArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;

    return-object v0
.end method

.method public getNameList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->mFeatureArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 55
    return-object v1

    .line 52
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;

    .line 53
    iget-object v0, v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->featureFields:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public getNameList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    .line 63
    return-object v1

    .line 60
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 61
    iget-object v3, p0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->mFeatureArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;

    iget-object v0, v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->featureFields:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method public size()I
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->mFeatureArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
