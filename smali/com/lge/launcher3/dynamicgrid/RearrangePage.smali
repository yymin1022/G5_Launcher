.class public Lcom/lge/launcher3/dynamicgrid/RearrangePage;
.super Ljava/lang/Object;
.source "RearrangePage.java"


# static fields
.field private static final NEW_SCREEN_ID:J = -0x3e8L

.field private static final TAG:Ljava/lang/String; = "RearrangePage"


# instance fields
.field private ItemInfoComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mColumns:I

.field private mDeleteItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOcuppiedArray:[[Z

.field private mRows:I

.field mScreenId:Ljava/lang/Long;

.field mSiblingPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/dynamicgrid/RearrangePage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;IIJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ItemInfo;",
            ">;IIJ)V"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mRows:I

    .line 15
    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mColumns:I

    .line 16
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mScreenId:Ljava/lang/Long;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mItems:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mDeleteItems:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mSiblingPages:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Lcom/lge/launcher3/dynamicgrid/RearrangePage$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/dynamicgrid/RearrangePage$1;-><init>(Lcom/lge/launcher3/dynamicgrid/RearrangePage;)V

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->ItemInfoComparator:Ljava/util/Comparator;

    .line 24
    iput p3, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mRows:I

    .line 25
    iput p2, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mColumns:I

    .line 26
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mScreenId:Ljava/lang/Long;

    .line 27
    iget v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mColumns:I

    iget v2, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mRows:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mOcuppiedArray:[[Z

    move v0, v1

    .line 28
    :goto_4a
    iget v2, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mColumns:I

    if-lt v0, v2, :cond_5a

    .line 33
    invoke-direct {p0, p1}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->resizeItems(Ljava/util/ArrayList;)V

    .line 34
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->ItemInfoComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->matchItemToPage(Ljava/util/ArrayList;)V

    .line 36
    return-void

    :cond_5a
    move v2, v1

    .line 29
    :goto_5b
    iget v3, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mRows:I

    if-lt v2, v3, :cond_62

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 30
    :cond_62
    iget-object v3, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mOcuppiedArray:[[Z

    aget-object v3, v3, v0

    aput-boolean v1, v3, v2

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b
.end method

.method private addItem(Lcom/android/launcher3/ItemInfo;)V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-direct {p0, p1}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->setOcuppiedArray(Lcom/android/launcher3/ItemInfo;)V

    .line 143
    return-void
.end method

.method private addItemOnSiblingPage(Lcom/android/launcher3/ItemInfo;)V
    .registers 3

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->getLastSiblingPage()Lcom/lge/launcher3/dynamicgrid/RearrangePage;

    move-result-object v0

    .line 162
    invoke-direct {v0, p1}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->insertAfterRearragne(Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 163
    invoke-direct {p0}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->makeNewSiblingPage()Lcom/lge/launcher3/dynamicgrid/RearrangePage;

    move-result-object v0

    .line 164
    invoke-direct {v0, p1}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->insertAfterRearragne(Lcom/android/launcher3/ItemInfo;)Z

    .line 166
    :cond_11
    return-void
.end method

.method private addRemoveItemList(Lcom/android/launcher3/ItemInfo;)V
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 109
    iput v0, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 110
    iput v0, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 111
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mDeleteItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method private findEmptyPosition(Lcom/android/launcher3/ItemInfo;)[I
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 195
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 196
    aput v2, v3, v1

    .line 197
    aput v2, v3, v5

    move v0, v1

    .line 198
    :goto_b
    iget v2, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mRows:I

    if-lt v0, v2, :cond_11

    move-object v0, v3

    .line 207
    :goto_10
    return-object v0

    :cond_11
    move v2, v1

    .line 199
    :goto_12
    iget v4, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mColumns:I

    if-lt v2, v4, :cond_19

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 200
    :cond_19
    iget-object v4, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mOcuppiedArray:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v0

    if-nez v4, :cond_2d

    invoke-direct {p0, p1, v2, v0}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->isVailidPosition(Lcom/android/launcher3/ItemInfo;II)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 201
    aput v2, v3, v1

    .line 202
    aput v0, v3, v5

    move-object v0, v3

    .line 203
    goto :goto_10

    .line 199
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method

.method private getLastSiblingPage()Lcom/lge/launcher3/dynamicgrid/RearrangePage;
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mSiblingPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 176
    invoke-direct {p0}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->makeNewSiblingPage()Lcom/lge/launcher3/dynamicgrid/RearrangePage;

    .line 178
    :cond_b
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mSiblingPages:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mSiblingPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;

    return-object v0
.end method

.method private insertAfterRearragne(Lcom/android/launcher3/ItemInfo;)Z
    .registers 8

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 182
    invoke-direct {p0, p1}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->findEmptyPosition(Lcom/android/launcher3/ItemInfo;)[I

    move-result-object v4

    .line 183
    aget v0, v4, v2

    if-ne v0, v5, :cond_15

    move v0, v1

    :goto_c
    aget v3, v4, v1

    if-ne v3, v5, :cond_17

    move v3, v1

    :goto_11
    and-int/2addr v0, v3

    if-eqz v0, :cond_19

    .line 190
    :goto_14
    return v2

    :cond_15
    move v0, v2

    .line 183
    goto :goto_c

    :cond_17
    move v3, v2

    goto :goto_11

    .line 186
    :cond_19
    aget v0, v4, v2

    iput v0, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 187
    aget v0, v4, v1

    iput v0, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 188
    iput-boolean v1, p1, Lcom/android/launcher3/ItemInfo;->requiresDbUpdate:Z

    .line 189
    invoke-direct {p0, p1}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->addItem(Lcom/android/launcher3/ItemInfo;)V

    move v2, v1

    .line 190
    goto :goto_14
.end method

.method private isExceedBound(Lcom/android/launcher3/ItemInfo;)Z
    .registers 4

    .prologue
    .line 154
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v1, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mColumns:I

    if-gt v0, v1, :cond_12

    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v1, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mRows:I

    if-le v0, v1, :cond_14

    .line 155
    :cond_12
    const/4 v0, 0x1

    .line 157
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private isVailidPosition(Lcom/android/launcher3/ItemInfo;II)Z
    .registers 7

    .prologue
    move v0, p3

    .line 211
    :goto_1
    iget v1, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    add-int/2addr v1, p3

    if-lt v0, v1, :cond_8

    .line 219
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    move v1, p2

    .line 212
    :goto_9
    iget v2, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    add-int/2addr v2, p2

    if-lt v1, v2, :cond_11

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 213
    :cond_11
    iget v2, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mRows:I

    if-ge v0, v2, :cond_21

    iget v2, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mColumns:I

    if-ge v1, v2, :cond_21

    .line 214
    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mOcuppiedArray:[[Z

    aget-object v2, v2, v1

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_23

    .line 215
    :cond_21
    const/4 v0, 0x0

    goto :goto_7

    .line 212
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private makeNewSiblingPage()Lcom/lge/launcher3/dynamicgrid/RearrangePage;
    .registers 7

    .prologue
    .line 169
    new-instance v0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mColumns:I

    iget v3, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mRows:I

    const-wide/16 v4, -0x3e8

    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;-><init>(Ljava/util/ArrayList;IIJ)V

    .line 170
    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mSiblingPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    return-object v0
.end method

.method private matchItemToPage(Ljava/util/ArrayList;)V
    .registers 6
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
    .line 94
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_7
    if-gez v1, :cond_a

    .line 106
    return-void

    .line 95
    :cond_a
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 96
    invoke-direct {p0, v0}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->isExceedBound(Lcom/android/launcher3/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 97
    iget v2, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v3, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mColumns:I

    if-gt v2, v3, :cond_22

    iget v2, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    iget v3, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mRows:I

    if-le v2, v3, :cond_29

    .line 98
    :cond_22
    invoke-direct {p0, v0}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->addRemoveItemList(Lcom/android/launcher3/ItemInfo;)V

    .line 94
    :goto_25
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_7

    .line 100
    :cond_29
    invoke-direct {p0, v0}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->addItemOnSiblingPage(Lcom/android/launcher3/ItemInfo;)V

    goto :goto_25

    .line 103
    :cond_2d
    invoke-direct {p0, v0}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->addItem(Lcom/android/launcher3/ItemInfo;)V

    goto :goto_25
.end method

.method private needResize(Lcom/android/launcher3/ItemInfo;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 115
    iget v1, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    if-nez v1, :cond_c

    iget v1, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v2, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mColumns:I

    if-le v1, v2, :cond_c

    .line 120
    :cond_b
    :goto_b
    return v0

    .line 117
    :cond_c
    iget v1, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    if-nez v1, :cond_16

    iget v1, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    iget v2, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mRows:I

    if-gt v1, v2, :cond_b

    .line 120
    :cond_16
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private resize(Lcom/android/launcher3/ItemInfo;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 125
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v1, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mColumns:I

    if-le v0, v1, :cond_13

    .line 126
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    iget v1, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mColumns:I

    if-gt v0, v1, :cond_13

    .line 127
    iget v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mColumns:I

    iput v0, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 128
    iput-boolean v2, p1, Lcom/android/launcher3/ItemInfo;->requiresDbUpdate:Z

    .line 132
    :cond_13
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    iget v1, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mRows:I

    if-le v0, v1, :cond_25

    .line 133
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    iget v1, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mRows:I

    if-gt v0, v1, :cond_25

    .line 134
    iget v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mRows:I

    iput v0, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 135
    iput-boolean v2, p1, Lcom/android/launcher3/ItemInfo;->requiresDbUpdate:Z

    .line 138
    :cond_25
    return-void
.end method

.method private resizeItems(Ljava/util/ArrayList;)V
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
    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_7
    if-gez v1, :cond_a

    .line 91
    return-void

    .line 86
    :cond_a
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 87
    invoke-direct {p0, v0}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->needResize(Lcom/android/launcher3/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 88
    invoke-direct {p0, v0}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->resize(Lcom/android/launcher3/ItemInfo;)V

    .line 85
    :cond_19
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_7
.end method

.method private setOcuppiedArray(Lcom/android/launcher3/ItemInfo;)V
    .registers 6

    .prologue
    .line 146
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    :goto_2
    iget v1, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_a

    .line 151
    return-void

    .line 147
    :cond_a
    iget v1, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    :goto_c
    iget v2, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v3, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_16

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 148
    :cond_16
    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mOcuppiedArray:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method


# virtual methods
.method public getDeleteItems(Ljava/util/ArrayList;)V
    .registers 4
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
    .line 265
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mDeleteItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    .line 269
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mSiblingPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_23

    .line 272
    return-void

    .line 265
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 266
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 269
    :cond_23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;

    .line 270
    invoke-virtual {v0, p1}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->getDeleteItems(Ljava/util/ArrayList;)V

    goto :goto_12
.end method

.method public getModifiedItems(Ljava/util/ArrayList;)V
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
    .line 253
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    .line 259
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mSiblingPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_27

    .line 262
    return-void

    .line 253
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 254
    iget-boolean v2, v0, Lcom/android/launcher3/ItemInfo;->requiresDbUpdate:Z

    if-eqz v2, :cond_6

    .line 255
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 259
    :cond_27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;

    .line 260
    invoke-virtual {v0, p1}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->getModifiedItems(Ljava/util/ArrayList;)V

    goto :goto_12
.end method

.method public setScreenId(Ljava/lang/Long;)V
    .registers 2

    .prologue
    .line 242
    iput-object p1, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mScreenId:Ljava/lang/Long;

    .line 243
    return-void
.end method

.method public setScreenIdAllItems(Ljava/lang/Long;)V
    .registers 6

    .prologue
    .line 246
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 250
    return-void

    .line 246
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 247
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 248
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher3/ItemInfo;->requiresDbUpdate:Z

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Page(mScreenId):"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mScreenId:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ------------------- start\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 225
    :goto_21
    iget v2, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mRows:I

    if-lt v0, v2, :cond_50

    .line 233
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mSiblingPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Page(mScreenId):"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mScreenId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ------------------- end\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 226
    :cond_50
    const-string v2, "[ "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    .line 227
    :goto_56
    iget v3, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mColumns:I

    if-lt v2, v3, :cond_62

    .line 230
    const-string v2, " ]\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 228
    :cond_62
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mOcuppiedArray:[[Z

    aget-object v3, v3, v2

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_87

    const-string v3, "O"

    :goto_73
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 228
    :cond_87
    const-string v3, "X"

    goto :goto_73

    .line 233
    :cond_8a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sibling Page("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->mSiblingPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ===> \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0}, Lcom/lge/launcher3/dynamicgrid/RearrangePage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2b
.end method
