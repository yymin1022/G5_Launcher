.class public Lcom/lge/launcher3/sortappsby/SortAppsByManager;
.super Ljava/lang/Object;
.source "SortAppsByManager.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$sortappsby$SortAppsByConst$SortType:[I

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$sortappsby$SortAppsByConst$SortType()[I
    .registers 3

    .prologue
    .line 26
    sget-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByManager;->$SWITCH_TABLE$com$lge$launcher3$sortappsby$SortAppsByConst$SortType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->values()[Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->DOWNLOAD_DATE:Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    invoke-virtual {v1}, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->NAME:Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    invoke-virtual {v1}, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21

    :goto_1e
    sput-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByManager;->$SWITCH_TABLE$com$lge$launcher3$sortappsby$SortAppsByConst$SortType:[I

    goto :goto_4

    :catch_21
    move-exception v1

    goto :goto_1e

    :catch_23
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/lge/launcher3/sortappsby/SortAppsByManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;)Z
    .registers 3

    .prologue
    .line 83
    invoke-static {p0, p1}, Lcom/lge/launcher3/sortappsby/SortAppsByManager;->rearrange(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;)Z

    move-result v0

    return v0
.end method

.method private static createSortedItemListIntoName(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;Landroid/util/SparseIntArray;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;",
            "Landroid/util/SparseIntArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 138
    sget-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByManager;->TAG:Ljava/lang/String;

    const-string v1, "createSortedItemListIntoName()"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/lge/launcher3/sortappsby/SortAppsByManager;->$SWITCH_TABLE$com$lge$launcher3$sortappsby$SortAppsByConst$SortType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_8e

    move-object v0, v4

    .line 196
    :goto_17
    return-object v0

    .line 145
    :pswitch_18
    sget-object v2, Lcom/lge/launcher3/sortappsby/SortAppsByConst;->NAME_COMPARATOR:Ljava/util/Comparator;

    .line 146
    sget-object v1, Lcom/lge/launcher3/sortappsby/SortAppsByConst;->NAME_COMPARATOR:Ljava/util/Comparator;

    .line 147
    sget-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByConst;->NAME_COMPARATOR:Ljava/util/Comparator;

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 162
    :goto_21
    const/4 v0, 0x2

    invoke-static {p0, p2, v0, v4}, Lcom/lge/launcher3/sortappsby/SortAppsByDatabaseController;->getItemList(Landroid/content/Context;Landroid/util/SparseIntArray;ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-static {p0, p2, v9, v0}, Lcom/lge/launcher3/sortappsby/SortAppsByDatabaseController;->getItemList(Landroid/content/Context;Landroid/util/SparseIntArray;ILjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 168
    const/4 v5, 0x0

    .line 167
    invoke-static {p0, p2, v5, v0}, Lcom/lge/launcher3/sortappsby/SortAppsByDatabaseController;->getItemList(Landroid/content/Context;Landroid/util/SparseIntArray;ILjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 170
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 171
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_40
    :goto_40
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_71

    .line 182
    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    invoke-static {v5, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 184
    invoke-static {v6, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 189
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 190
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 192
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 193
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 194
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_17

    .line 151
    :pswitch_67
    sget-object v2, Lcom/lge/launcher3/sortappsby/SortAppsByConst;->POSITION_COMPARATOR:Ljava/util/Comparator;

    .line 152
    sget-object v1, Lcom/lge/launcher3/sortappsby/SortAppsByConst;->POSITION_COMPARATOR:Ljava/util/Comparator;

    .line 153
    sget-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByConst;->INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 154
    goto :goto_21

    .line 172
    :cond_71
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;

    .line 173
    iget v8, v0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mItemType:I

    if-eq v8, v9, :cond_81

    .line 174
    invoke-static {p0, v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetUtils;->isShortcutWithApplicationType(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;)Z

    move-result v8

    if-eqz v8, :cond_85

    .line 175
    :cond_81
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 176
    :cond_85
    iget v8, v0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mItemType:I

    if-nez v8, :cond_40

    .line 177
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 143
    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_18
        :pswitch_67
    .end packed-switch
.end method

.method private static printLogRearrangeInfo(Ljava/util/ArrayList;Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;",
            ">;",
            "Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 205
    sget-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByManager;->TAG:Ljava/lang/String;

    .line 206
    const-string v1, "[%2dth] %s(%s)[%s] : %d (%d, %d) >>> %d (%d, %d)\n"

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 207
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mLabel:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 208
    invoke-virtual {p1}, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->getItemTypeToString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p1, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mScreenRank:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p1, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mCellX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p1, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mCellY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 209
    iget v4, p1, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewScreenRank:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget v4, p1, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewCellX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget v4, p1, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->mNewCellY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 205
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method private static rearrange(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;)Z
    .registers 15

    .prologue
    const/4 v12, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 84
    sget-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByManager;->TAG:Ljava/lang/String;

    const-string v1, "rearrange(%s) : Start"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/lge/launcher3/sortappsby/SortAppsByManager;->$SWITCH_TABLE$com$lge$launcher3$sortappsby$SortAppsByConst$SortType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_9c

    .line 93
    const-string v0, "Home_ChangeSortAppsBy"

    invoke-static {p0, v0, v12}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;I)V

    .line 96
    :goto_28
    invoke-static {p0}, Lcom/lge/launcher3/sortappsby/SortAppsByDatabaseController;->getScreenArray(Landroid/content/Context;)Landroid/util/SparseIntArray;

    move-result-object v4

    .line 97
    invoke-static {p0, p1, v4}, Lcom/lge/launcher3/sortappsby/SortAppsByManager;->createSortedItemListIntoName(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;Landroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 99
    new-instance v6, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;

    invoke-direct {v6, p0, v4}, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;-><init>(Landroid/content/Context;Landroid/util/SparseIntArray;)V

    .line 102
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_47

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_47

    invoke-virtual {v6}, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_55

    :cond_47
    move v0, v3

    .line 127
    :goto_48
    return v0

    .line 87
    :pswitch_49
    const-string v0, "Home_ChangeSortAppsBy"

    invoke-static {p0, v0, v3}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_28

    .line 90
    :pswitch_4f
    const-string v0, "Home_ChangeSortAppsBy"

    invoke-static {p0, v0, v2}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_28

    .line 106
    :cond_55
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 107
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v1, v0

    :goto_5d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 119
    sget-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByManager;->TAG:Ljava/lang/String;

    const-string v1, "rearrange() : Update all rearranged item to database."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {p0, v5}, Lcom/lge/launcher3/sortappsby/SortAppsByDatabaseController;->updateRearrangedItemList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 122
    invoke-virtual {v6}, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->destroy()V

    .line 123
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 124
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 126
    sget-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByManager;->TAG:Ljava/lang/String;

    const-string v1, "rearrange() : End"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 127
    goto :goto_48

    .line 107
    :cond_7f
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;

    .line 108
    invoke-virtual {v6, v1}, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->allocateNextEmptyCell([I)[I

    move-result-object v1

    .line 109
    aget v8, v1, v3

    invoke-virtual {v4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 110
    aget v9, v1, v3

    .line 111
    aget v10, v1, v2

    .line 112
    aget v11, v1, v12

    .line 114
    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->setNewCell(IIII)V

    .line 116
    invoke-static {v5, v0}, Lcom/lge/launcher3/sortappsby/SortAppsByManager;->printLogRearrangeInfo(Ljava/util/ArrayList;Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;)V

    goto :goto_5d

    .line 85
    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_49
        :pswitch_4f
    .end packed-switch
.end method

.method public static rearrange(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;Z)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 38
    invoke-static {p0, v1}, Lcom/lge/launcher3/memory/MemoryUtils;->hasAvailableFileSystemMemory(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_10

    .line 39
    sget-object v1, Lcom/lge/launcher3/sortappsby/SortAppsByManager;->TAG:Ljava/lang/String;

    const-string v2, "Memory is full. so rearrange() is canceled."

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_f
    return v0

    .line 43
    :cond_10
    if-nez p2, :cond_17

    .line 44
    invoke-static {p0, p1}, Lcom/lge/launcher3/sortappsby/SortAppsByManager;->rearrange(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;)Z

    move-result v0

    goto :goto_f

    .line 47
    :cond_17
    new-instance v2, Lcom/lge/launcher3/sortappsby/SortAppsByManager$1;

    invoke-direct {v2, p0, p1}, Lcom/lge/launcher3/sortappsby/SortAppsByManager$1;-><init>(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;)V

    .line 74
    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 75
    goto :goto_f
.end method
