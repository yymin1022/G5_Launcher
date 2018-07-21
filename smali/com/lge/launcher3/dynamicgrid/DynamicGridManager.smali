.class public Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;
.super Ljava/lang/Object;
.source "DynamicGridManager.java"


# static fields
.field private static final INVALID_INDEX:I = -0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCurrentGridIndex:I

.field private mDynamicGrid:Lcom/lge/launcher3/dynamicgrid/DynamicGrid;

.field private mGridChangeCompleteAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private mPresetStringArray:[Ljava/lang/String;

.field private mSelectedGridIndex:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mCurrentGridIndex:I

    .line 28
    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mSelectedGridIndex:I

    .line 73
    new-instance v0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager$1;-><init>(Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;)V

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mGridChangeCompleteAsyncTask:Landroid/os/AsyncTask;

    .line 32
    iput-object p1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mActivity:Landroid/app/Activity;

    .line 33
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->initArray()V

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;)Lcom/lge/launcher3/dynamicgrid/DynamicGrid;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mDynamicGrid:Lcom/lge/launcher3/dynamicgrid/DynamicGrid;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mGrids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private getCurrentGridIndex(Ljava/util/ArrayList;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[I>;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0023

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 47
    iget-object v3, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mContext:Landroid/content/Context;

    .line 48
    sget-object v4, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;->CURRENT_WORKSAPACE_COLUMNS:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;

    .line 47
    invoke-static {v3, v4, v0}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->getSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I

    move-result v3

    .line 49
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mContext:Landroid/content/Context;

    .line 50
    sget-object v4, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;->CURRENT_WORKSAPACE_ROWS:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;

    .line 49
    invoke-static {v0, v4, v1}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->getSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I

    move-result v4

    move v1, v2

    .line 52
    :goto_2c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_34

    .line 58
    const/4 v1, -0x1

    :cond_33
    return v1

    .line 53
    :cond_34
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 54
    aget v5, v0, v2

    if-ne v3, v5, :cond_43

    const/4 v5, 0x1

    aget v0, v0, v5

    if-eq v4, v0, :cond_33

    .line 52
    :cond_43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2c
.end method

.method private getWorkspaceAllItems()Lcom/android/launcher3/util/LongArrayMap;
    .registers 9
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
    .line 62
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    .line 63
    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->clone()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v1}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 65
    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    .line 70
    return-object v1

    .line 65
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 66
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v3, v4, v6

    if-nez v3, :cond_f

    .line 67
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v1, v4, v5, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_f
.end method

.method private initArray()V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mGrids:Ljava/util/ArrayList;

    if-nez v0, :cond_21

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mGrids:Ljava/util/ArrayList;

    .line 100
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    const v2, 0x7f0a0007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mPresetStringArray:[Ljava/lang/String;

    .line 103
    iget-object v4, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mPresetStringArray:[Ljava/lang/String;

    array-length v5, v4

    move v3, v1

    :goto_1f
    if-lt v3, v5, :cond_22

    .line 119
    :cond_21
    return-void

    .line 103
    :cond_22
    aget-object v0, v4, v3

    .line 104
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v0, "x"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 105
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 107
    array-length v8, v6

    move v0, v1

    move v2, v1

    :goto_35
    if-lt v0, v8, :cond_40

    .line 116
    :goto_37
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mGrids:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1f

    .line 107
    :cond_40
    aget-object v9, v6, v0

    .line 109
    :try_start_42
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v7, v2
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_48} :catch_4d

    .line 110
    add-int/lit8 v2, v2, 0x1

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 112
    :catch_4d
    move-exception v0

    const/4 v0, 0x1

    aput v1, v7, v0

    aput v1, v7, v1

    goto :goto_37
.end method


# virtual methods
.method public getCurrentGridIndex()I
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mGrids:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->getCurrentGridIndex(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public getDynamicGrid()Lcom/lge/launcher3/dynamicgrid/DynamicGrid;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mDynamicGrid:Lcom/lge/launcher3/dynamicgrid/DynamicGrid;

    return-object v0
.end method

.method public getGrids()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mGrids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPresetArray()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mPresetStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedGridIndex()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mSelectedGridIndex:I

    return v0
.end method

.method public init()V
    .registers 6

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mGrids:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->getCurrentGridIndex(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mSelectedGridIndex:I

    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mCurrentGridIndex:I

    .line 39
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 40
    invoke-direct {p0}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->getWorkspaceAllItems()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v1

    .line 41
    new-instance v2, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;

    iget-object v3, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mGrids:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Lcom/android/launcher3/util/LongArrayMap;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mDynamicGrid:Lcom/lge/launcher3/dynamicgrid/DynamicGrid;

    .line 42
    return-void
.end method

.method public runDynamicGrid(I)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mContext:Landroid/content/Context;

    const-string v1, "Home_ChangeGrid"

    invoke-static {v0, v1, p1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;I)V

    .line 131
    iput p1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mCurrentGridIndex:I

    .line 132
    iget v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mSelectedGridIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_4b

    iget v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mCurrentGridIndex:I

    iget v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mSelectedGridIndex:I

    if-eq v0, v1, :cond_4b

    .line 133
    iget v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mCurrentGridIndex:I

    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mSelectedGridIndex:I

    .line 134
    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mContext:Landroid/content/Context;

    .line 135
    sget-object v2, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;->CURRENT_WORKSAPACE_ROWS:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;

    .line 136
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mGrids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v4

    .line 134
    invoke-static {v1, v2, v0}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->setSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)V

    .line 137
    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mContext:Landroid/content/Context;

    .line 138
    sget-object v2, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;->CURRENT_WORKSAPACE_COLUMNS:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;

    .line 139
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mGrids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v3

    .line 137
    invoke-static {v1, v2, v0}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->setSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)V

    .line 140
    iget-object v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mGridChangeCompleteAsyncTask:Landroid/os/AsyncTask;

    new-array v1, v4, [Ljava/lang/Integer;

    iget v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mSelectedGridIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    :cond_4b
    return-void
.end method

.method public setmGrids(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[I>;)V"
        }
    .end annotation

    .prologue
    .line 149
    iput-object p1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->mGrids:Ljava/util/ArrayList;

    .line 150
    return-void
.end method
