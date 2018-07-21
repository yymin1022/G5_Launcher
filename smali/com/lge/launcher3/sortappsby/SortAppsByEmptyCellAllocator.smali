.class public Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;
.super Ljava/lang/Object;
.source "SortAppsByEmptyCellAllocator.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrCellX:I

.field private mCurrCellY:I

.field private mCurrScreenRank:I

.field private mIsAvalable:Z

.field private final mMaxCellX:I

.field private final mMaxCellY:I

.field private mWidgetItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/SparseIntArray;)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mContext:Landroid/content/Context;

    .line 26
    iput-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mWidgetItemList:Ljava/util/ArrayList;

    .line 28
    iput v4, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mCurrScreenRank:I

    .line 29
    iput v4, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mCurrCellX:I

    .line 30
    iput v4, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mCurrCellY:I

    .line 35
    iput-boolean v2, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mIsAvalable:Z

    .line 43
    iput-object p1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mContext:Landroid/content/Context;

    .line 46
    const/4 v0, 0x4

    .line 45
    invoke-static {p1, p2, v0, v1}, Lcom/lge/launcher3/sortappsby/SortAppsByDatabaseController;->getItemList(Landroid/content/Context;Landroid/util/SparseIntArray;ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mWidgetItemList:Ljava/util/ArrayList;

    .line 48
    iput v2, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mCurrScreenRank:I

    .line 49
    iput v4, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mCurrCellX:I

    .line 50
    iput v5, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mCurrCellY:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 54
    if-nez v1, :cond_7e

    .line 55
    iget-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mContext:Landroid/content/Context;

    .line 56
    sget-object v2, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;->CURRENT_WORKSAPACE_COLUMNS:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;

    .line 55
    invoke-static {v0, v2, v5}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->getSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I

    move-result v0

    .line 56
    add-int/lit8 v0, v0, -0x1

    .line 55
    iput v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mMaxCellX:I

    .line 57
    iget-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mContext:Landroid/content/Context;

    .line 58
    sget-object v2, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;->CURRENT_WORKSAPACE_ROWS:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;

    .line 57
    invoke-static {v0, v2, v5}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->getSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I

    move-result v0

    .line 58
    add-int/lit8 v0, v0, -0x1

    .line 57
    iput v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mMaxCellY:I

    .line 64
    :goto_47
    sget-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SortAppsByCellAllocator() :: isTablet="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMaxCellX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 65
    iget v2, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mMaxCellX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMaxCellY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mMaxCellY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mMaxCellX:I

    if-eq v0, v4, :cond_7b

    iget v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mMaxCellY:I

    if-ne v0, v4, :cond_7d

    .line 68
    :cond_7b
    iput-boolean v5, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mIsAvalable:Z

    .line 70
    :cond_7d
    return-void

    .line 60
    :cond_7e
    const v2, 0x7f0c0024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mMaxCellX:I

    .line 61
    const v2, 0x7f0c0023

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mMaxCellY:I

    goto :goto_47
.end method

.method private isEmptyCell(III)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mWidgetItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    move v0, v1

    .line 129
    :goto_6
    return v0

    .line 124
    :cond_7
    iget-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mWidgetItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    .line 129
    goto :goto_6

    .line 124
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;

    .line 125
    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->contains(III)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 126
    const/4 v0, 0x1

    goto :goto_6
.end method


# virtual methods
.method public allocateNextEmptyCell([I)[I
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 77
    iget-boolean v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mIsAvalable:Z

    if-nez v0, :cond_7

    .line 78
    const/4 p1, 0x0

    .line 108
    :goto_6
    return-object p1

    .line 81
    :cond_7
    if-eqz p1, :cond_34

    .line 83
    :goto_9
    iget v2, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mCurrScreenRank:I

    .line 84
    iget v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mCurrCellX:I

    .line 85
    iget v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mCurrCellY:I

    .line 88
    :cond_f
    add-int/lit8 v1, v1, 0x1

    .line 90
    iget v4, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mMaxCellX:I

    if-le v1, v4, :cond_1f

    .line 92
    add-int/lit8 v0, v0, 0x1

    .line 94
    iget v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mMaxCellY:I

    if-le v0, v1, :cond_38

    .line 95
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    move v1, v3

    .line 100
    :cond_1f
    :goto_1f
    invoke-direct {p0, v2, v1, v0}, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->isEmptyCell(III)Z

    move-result v4

    if-nez v4, :cond_f

    .line 101
    iput v2, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mCurrScreenRank:I

    .line 102
    iput v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mCurrCellX:I

    .line 103
    iput v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mCurrCellY:I

    .line 105
    aput v2, p1, v3

    .line 106
    const/4 v2, 0x1

    aput v1, p1, v2

    .line 107
    const/4 v1, 0x2

    aput v0, p1, v1

    goto :goto_6

    .line 81
    :cond_34
    const/4 v0, 0x3

    new-array p1, v0, [I

    goto :goto_9

    :cond_38
    move v1, v3

    goto :goto_1f
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mWidgetItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 143
    iget-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mWidgetItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    iput-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mWidgetItemList:Ljava/util/ArrayList;

    .line 147
    :cond_c
    iput-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mContext:Landroid/content/Context;

    .line 148
    return-void
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByEmptyCellAllocator;->mIsAvalable:Z

    return v0
.end method
