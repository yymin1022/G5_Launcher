.class public Lcom/lge/launcher3/dynamicgrid/DynamicGrid;
.super Ljava/lang/Object;
.source "DynamicGrid.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGridInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/launcher3/dynamicgrid/GridInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInputScreenOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mInputWorkspaceItems:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Lcom/android/launcher3/util/LongArrayMap;Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[I>;",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->mInputWorkspaceItems:Lcom/android/launcher3/util/LongArrayMap;

    .line 17
    iput-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->mInputScreenOrder:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->mGridInfo:Ljava/util/HashMap;

    .line 19
    iput-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p3}, Lcom/android/launcher3/util/LongArrayMap;->clone()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->mInputWorkspaceItems:Lcom/android/launcher3/util/LongArrayMap;

    .line 26
    invoke-virtual {p4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->mInputScreenOrder:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 31
    return-void

    .line 27
    :cond_2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 28
    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->mGridInfo:Ljava/util/HashMap;

    aget v3, v0, v8

    aget v4, v0, v9

    invoke-direct {p0, v3, v4}, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->getGridString(II)Ljava/lang/String;

    move-result-object v3

    .line 29
    new-instance v4, Lcom/lge/launcher3/dynamicgrid/GridInfo;

    iget-object v5, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->mInputWorkspaceItems:Lcom/android/launcher3/util/LongArrayMap;

    aget v6, v0, v8

    aget v0, v0, v9

    iget-object v7, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->mInputScreenOrder:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v6, v0, v7}, Lcom/lge/launcher3/dynamicgrid/GridInfo;-><init>(Lcom/android/launcher3/util/LongArrayMap;IILjava/util/ArrayList;)V

    .line 28
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27
.end method

.method private deleteFromDataBase(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 57
    return-void

    .line 53
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 54
    invoke-direct {p0, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->getItemInLauncherModel(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/ItemInfo;

    move-result-object v0

    .line 55
    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/launcher3/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V

    goto :goto_4
.end method

.method private getGridString(II)Ljava/lang/String;
    .registers 5

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getItemInLauncherModel(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/ItemInfo;
    .registers 6

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->mInputWorkspaceItems:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    return-object v0
.end method

.method private modifyItemInDatabase(Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 61
    :cond_4
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 71
    return-void

    .line 62
    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 63
    iget-boolean v1, v0, Lcom/android/launcher3/ItemInfo;->requiresDbUpdate:Z

    if-eqz v1, :cond_4

    .line 64
    invoke-direct {p0, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->getItemInLauncherModel(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/ItemInfo;

    move-result-object v1

    .line 65
    invoke-virtual {v1, v0}, Lcom/android/launcher3/ItemInfo;->copyFrom(Lcom/android/launcher3/ItemInfo;)V

    .line 66
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->mContext:Landroid/content/Context;

    iget-wide v2, v1, Lcom/android/launcher3/ItemInfo;->container:J

    .line 67
    iget-wide v4, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget v6, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v7, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v8, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 68
    iget v9, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 66
    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/LauncherModel;->modifyItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJIIII)V

    goto :goto_4
.end method

.method private updateWorkspaceScreenOrder(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 75
    return-void
.end method


# virtual methods
.method public getGridInfo(II)Lcom/lge/launcher3/dynamicgrid/GridInfo;
    .registers 5

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->mGridInfo:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->getGridString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/dynamicgrid/GridInfo;

    return-object v0
.end method

.method public getItemInfoOnGrid(III)Lcom/android/launcher3/ItemInfo;
    .registers 8

    .prologue
    .line 78
    invoke-virtual {p0, p2, p3}, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->getGridInfo(II)Lcom/lge/launcher3/dynamicgrid/GridInfo;

    move-result-object v0

    .line 79
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/lge/launcher3/dynamicgrid/GridInfo;->getItemInfo(J)Lcom/android/launcher3/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public updateDatabase([I)V
    .registers 4

    .prologue
    .line 42
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->getGridInfo(II)Lcom/lge/launcher3/dynamicgrid/GridInfo;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/lge/launcher3/dynamicgrid/GridInfo;->getDeleteItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->deleteFromDataBase(Ljava/util/ArrayList;)V

    .line 44
    invoke-virtual {v0}, Lcom/lge/launcher3/dynamicgrid/GridInfo;->getModifiedItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->modifyItemInDatabase(Ljava/util/ArrayList;)V

    .line 45
    invoke-virtual {v0}, Lcom/lge/launcher3/dynamicgrid/GridInfo;->getPageOrders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->updateWorkspaceScreenOrder(Ljava/util/ArrayList;)V

    .line 46
    return-void
.end method
