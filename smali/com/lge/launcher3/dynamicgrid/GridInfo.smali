.class public Lcom/lge/launcher3/dynamicgrid/GridInfo;
.super Ljava/lang/Object;
.source "GridInfo.java"


# instance fields
.field private mColumns:I

.field private mInputItems:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxScreenId:Ljava/lang/Long;

.field private mPageOrders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPages:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/lge/launcher3/dynamicgrid/RearrangePage;",
            ">;"
        }
    .end annotation
.end field

.field private mRows:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/LongArrayMap;IILjava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v1, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v1}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v1, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mPages:Lcom/android/launcher3/util/LongArrayMap;

    .line 13
    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mPageOrders:Ljava/util/ArrayList;

    .line 17
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mMaxScreenId:Ljava/lang/Long;

    .line 21
    iput p3, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mRows:I

    .line 22
    iput p2, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mColumns:I

    .line 23
    if-eqz p4, :cond_21

    invoke-virtual {p4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :cond_21
    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mPageOrders:Ljava/util/ArrayList;

    .line 24
    invoke-direct {p0, p1}, Lcom/lge/launcher3/dynamicgrid/GridInfo;->cloneMap(Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mInputItems:Lcom/android/launcher3/util/LongArrayMap;

    .line 25
    invoke-direct {p0, p4}, Lcom/lge/launcher3/dynamicgrid/GridInfo;->initMaxScreenId(Ljava/util/ArrayList;)V

    .line 26
    iget v0, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mColumns:I

    iget v1, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mRows:I

    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/dynamicgrid/GridInfo;->makePages(II)V

    .line 27
    invoke-direct {p0}, Lcom/lge/launcher3/dynamicgrid/GridInfo;->allocateNewScreenId()V

    .line 28
    return-void
.end method

.method private allocateNewScreenId()V
    .registers 6

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mPages:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 48
    return-void

    .line 40
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;

    .line 41
    iget-object v1, v0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mSiblingPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/dynamicgrid/RearrangePage;

    .line 42
    invoke-direct {p0}, Lcom/lge/launcher3/dynamicgrid/GridInfo;->generateNewScreenId()Ljava/lang/Long;

    move-result-object v4

    .line 43
    invoke-virtual {v1, v4}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->setScreenId(Ljava/lang/Long;)V

    .line 44
    invoke-virtual {v1, v4}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->setScreenIdAllItems(Ljava/lang/Long;)V

    .line 45
    iget-object v1, v0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mScreenId:Ljava/lang/Long;

    invoke-direct {p0, v1, v4}, Lcom/lge/launcher3/dynamicgrid/GridInfo;->insertNewScreenId(Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_19
.end method

.method private cloneMap(Lcom/android/launcher3/util/LongArrayMap;)Lcom/android/launcher3/util/LongArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;)",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v1, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v1}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 90
    invoke-virtual {p1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    .line 93
    return-object v1

    .line 90
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 91
    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LongArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v3

    int-to-long v4, v3

    invoke-direct {p0, v0}, Lcom/lge/launcher3/dynamicgrid/GridInfo;->copyItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/ItemInfo;

    move-result-object v0

    invoke-virtual {v1, v4, v5, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_9
.end method

.method private copyItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/ItemInfo;
    .registers 3

    .prologue
    .line 97
    new-instance v0, Lcom/android/launcher3/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    .line 98
    invoke-virtual {v0, p1}, Lcom/android/launcher3/ItemInfo;->copyFrom(Lcom/android/launcher3/ItemInfo;)V

    .line 99
    return-object v0
.end method

.method private generateNewScreenId()Ljava/lang/Long;
    .registers 5

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mMaxScreenId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mMaxScreenId:Ljava/lang/Long;

    .line 61
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mMaxScreenId:Ljava/lang/Long;

    return-object v0
.end method

.method private initMaxScreenId(Ljava/util/ArrayList;)V
    .registers 8
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
    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 37
    return-void

    .line 32
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 33
    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mMaxScreenId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 34
    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mMaxScreenId:Ljava/lang/Long;

    goto :goto_4
.end method

.method private insertNewScreenId(Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 5

    .prologue
    .line 51
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mPageOrders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_a

    .line 57
    :goto_9
    return-void

    .line 52
    :cond_a
    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mPageOrders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1a

    .line 53
    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mPageOrders:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_9

    .line 51
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private makePages(II)V
    .registers 15

    .prologue
    .line 65
    new-instance v6, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v6}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 66
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mInputItems:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 73
    invoke-virtual {v6}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_40

    .line 78
    return-void

    .line 66
    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 67
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v6, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_34

    .line 68
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v4, v5, v1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 70
    :cond_34
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v6, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 73
    :cond_40
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 74
    iget-object v8, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mPages:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v6, v1}, Lcom/android/launcher3/util/LongArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v10

    .line 75
    new-instance v0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;

    .line 76
    invoke-virtual {v6, v1}, Lcom/android/launcher3/util/LongArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/android/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v4

    move v2, p1

    move v3, p2

    .line 75
    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;-><init>(Ljava/util/ArrayList;IIJ)V

    .line 74
    invoke-virtual {v8, v10, v11, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_15
.end method


# virtual methods
.method public getDeleteItems()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mPages:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 115
    return-object v1

    .line 112
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;

    .line 113
    invoke-virtual {v0, v1}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->getDeleteItems(Ljava/util/ArrayList;)V

    goto :goto_b
.end method

.method public getItemInfo(J)Lcom/android/launcher3/ItemInfo;
    .registers 8

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mInputItems:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 128
    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 123
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 124
    iget-wide v2, v0, Lcom/android/launcher3/ItemInfo;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_6

    goto :goto_d
.end method

.method public getModifiedItems()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mPages:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 107
    return-object v1

    .line 104
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;

    .line 105
    invoke-virtual {v0, v1}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->getModifiedItems(Ljava/util/ArrayList;)V

    goto :goto_b
.end method

.method public getPageOrders()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mPageOrders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRepresentScreenId(J)J
    .registers 10

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mPages:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 142
    :goto_c
    return-wide p1

    .line 132
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;

    .line 133
    iget-object v1, v0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mScreenId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, p1

    if-nez v1, :cond_24

    .line 134
    iget-object v0, v0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mScreenId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_c

    .line 136
    :cond_24
    iget-object v1, v0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mSiblingPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/dynamicgrid/RearrangePage;

    .line 137
    iget-object v1, v1, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mScreenId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, p1

    if-nez v1, :cond_2a

    .line 138
    iget-object v0, v0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mScreenId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_c
.end method

.method public printAllItems()Lcom/android/launcher3/util/LongArrayMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/GridInfo;->mPages:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;

    .line 83
    const-string v2, "GridPageInfo"

    invoke-virtual {v0}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method
