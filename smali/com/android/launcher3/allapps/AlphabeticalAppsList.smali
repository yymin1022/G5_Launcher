.class public Lcom/android/launcher3/allapps/AlphabeticalAppsList;
.super Ljava/lang/Object;
.source "AlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;,
        Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;,
        Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;,
        Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_PREDICTIONS:Z = false

.field public static final TAG:Ljava/lang/String; = "AlphabeticalAppsList"


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mAdapterItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAppNameComparator:Lcom/android/launcher3/model/AppNameComparator;

.field private final mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedSectionNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mComponentToAppMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/android/launcher3/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFastScrollerSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilteredApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexer:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mMergeAlgorithm:Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;

.field private mNumAppRowsInAdapter:I

.field private mNumAppsPerRow:I

.field private mNumPredictedAppsPerRow:I

.field private mPredictedAppComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field private mSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    move-object v0, p1

    .line 172
    check-cast v0, Lcom/android/launcher3/Launcher;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 173
    new-instance v0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    invoke-direct {v0, p1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mIndexer:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    .line 174
    new-instance v0, Lcom/android/launcher3/model/AppNameComparator;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/AppNameComparator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAppNameComparator:Lcom/android/launcher3/model/AppNameComparator;

    .line 175
    return-void
.end method

.method private getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 584
    if-nez v0, :cond_15

    .line 585
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mIndexer:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 586
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    :cond_15
    return-object v0
.end method

.method private getFiltersAppInfos()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 510
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    .line 520
    :goto_6
    return-object v0

    .line 513
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 514
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    move-object v0, v1

    .line 520
    goto :goto_6

    .line 514
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ComponentKey;

    .line 515
    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 516
    if-eqz v0, :cond_12

    .line 517
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12
.end method

.method private mergeSections()V
    .registers 11

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mMergeAlgorithm:Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    if-nez v0, :cond_9

    .line 576
    :cond_8
    return-void

    .line 533
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-nez v0, :cond_8

    .line 535
    const/4 v0, 0x0

    move v6, v0

    :goto_11
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_8

    .line 536
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .line 537
    iget v3, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    .line 538
    const/4 v5, 0x1

    .line 541
    :goto_26
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_44

    .line 542
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mMergeAlgorithm:Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    add-int/lit8 v4, v6, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .line 543
    iget v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    .line 542
    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;->continueMerging(Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;III)Z

    move-result v0

    .line 543
    if-nez v0, :cond_48

    .line 535
    :cond_44
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_11

    .line 544
    :cond_48
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    add-int/lit8 v2, v6, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .line 547
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    iget-object v4, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->sectionBreakItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 548
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    iget-object v4, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-interface {v2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 551
    iget v4, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int v7, v2, v4

    move v4, v7

    .line 552
    :goto_66
    iget v2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/2addr v2, v7

    if-lt v4, v2, :cond_89

    .line 559
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    iget-object v4, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-interface {v2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v4, v2

    .line 560
    :goto_74
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v4, v2, :cond_9e

    .line 564
    iget v2, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    iget v4, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/2addr v2, v4

    iput v2, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    .line 565
    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/2addr v3, v0

    .line 572
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 553
    :cond_89
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 554
    iput-object v1, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionInfo:Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .line 555
    iget v8, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    iget v9, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/2addr v8, v9

    iput v8, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    .line 552
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_66

    .line 561
    :cond_9e
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 562
    iget v7, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 560
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_74
.end method

.method private onAppsUpdated()V
    .registers 6

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 313
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 314
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAppNameComparator:Lcom/android/launcher3/model/AppNameComparator;

    invoke-virtual {v1}, Lcom/android/launcher3/model/AppNameComparator;->getAppInfoComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 318
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 320
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 321
    if-eqz v0, :cond_9d

    .line 324
    new-instance v2, Ljava/util/TreeMap;

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAppNameComparator:Lcom/android/launcher3/model/AppNameComparator;

    invoke-virtual {v0}, Lcom/android/launcher3/model/AppNameComparator;->getSectionNameComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 325
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 339
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 344
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 345
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 355
    :cond_69
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    .line 356
    return-void

    .line 325
    :cond_6d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 327
    iget-object v1, v0, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 330
    invoke-virtual {v2, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 331
    if-nez v1, :cond_89

    .line 332
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 333
    invoke-virtual {v2, v4, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_89
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 340
    :cond_8d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 341
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_59

    .line 348
    :cond_9d
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 350
    iget-object v0, v0, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_a3
.end method

.method private updateAdapterItems()V
    .registers 16

    .prologue
    const/4 v13, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 370
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 371
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 372
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 373
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 389
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 390
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    if-eqz v0, :cond_1ed

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1ed

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-nez v0, :cond_1ed

    .line 391
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_ba

    .line 406
    :goto_3b
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1ed

    .line 408
    new-instance v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    invoke-direct {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;-><init>()V

    .line 409
    new-instance v10, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    const-string v0, ""

    invoke-direct {v10, v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-static {v6, v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asSectionBreak(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v0

    .line 411
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v5, v6

    move v0, v8

    :goto_6a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_fc

    move-object v2, v1

    move-object v1, v10

    .line 431
    :goto_72
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getFiltersAppInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v3, v11

    move-object v7, v2

    :goto_7c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_128

    .line 461
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mergeSections()V

    .line 463
    iget v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    if-eqz v0, :cond_b0

    .line 468
    const/4 v0, -0x1

    .line 469
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    move v2, v6

    move v3, v6

    :cond_93
    :goto_93
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_18d

    .line 485
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    .line 488
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 489
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_aa
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1b9

    .line 503
    :cond_b0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_b9

    .line 504
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 506
    :cond_b9
    return-void

    .line 391
    :cond_ba
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ComponentKey;

    .line 392
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/AppInfo;

    .line 393
    if-eqz v1, :cond_db

    .line 394
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_cf
    :goto_cf
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumPredictedAppsPerRow:I

    if-ne v0, v1, :cond_35

    goto/16 :goto_3b

    .line 396
    :cond_db
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 397
    const-string v1, "AlphabeticalAppsList"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Predicted app not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/ComponentKey;->flattenToString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 416
    :cond_fc
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/AppInfo;

    .line 417
    add-int/lit8 v9, v0, 0x1

    .line 418
    const-string v2, ""

    iget v3, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/lit8 v7, v3, 0x1

    iput v7, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/lit8 v7, v5, 0x1

    .line 417
    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asPredictedApp(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILcom/android/launcher3/AppInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v0

    .line 419
    iget-object v2, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    if-nez v2, :cond_11a

    .line 420
    iput-object v0, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 421
    iput-object v0, v10, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 423
    :cond_11a
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v7

    move v0, v9

    goto/16 :goto_6a

    .line 431
    :cond_128
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/AppInfo;

    .line 432
    iget-object v2, v4, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 435
    if-eqz v7, :cond_13c

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e2

    .line 437
    :cond_13c
    new-instance v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    invoke-direct {v7}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;-><init>()V

    .line 438
    new-instance v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    invoke-direct {v3, v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v1

    if-nez v1, :cond_1e8

    .line 444
    add-int/lit8 v1, v0, 0x1

    invoke-static {v0, v7}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asSectionBreak(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v0

    .line 445
    iget-object v9, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    move-object v9, v2

    move-object v1, v7

    move-object v7, v3

    .line 450
    :goto_165
    add-int/lit8 v11, v0, 0x1

    .line 451
    iget v3, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/lit8 v10, v3, 0x1

    iput v10, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    add-int/lit8 v10, v5, 0x1

    .line 450
    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asApp(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILcom/android/launcher3/AppInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v0

    .line 452
    iget-object v2, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    if-nez v2, :cond_17b

    .line 453
    iput-object v0, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 454
    iput-object v0, v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 456
    :cond_17b
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v10

    move v0, v11

    move-object v3, v9

    move-object v14, v7

    move-object v7, v1

    move-object v1, v14

    goto/16 :goto_7c

    .line 469
    :cond_18d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 470
    iput v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    .line 471
    iget v4, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-nez v4, :cond_19c

    move v3, v6

    .line 473
    goto/16 :goto_93

    :cond_19c
    iget v4, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-eq v4, v8, :cond_1a4

    .line 474
    iget v4, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-ne v4, v13, :cond_93

    .line 475
    :cond_1a4
    iget v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    rem-int v4, v3, v4

    if-nez v4, :cond_1e0

    .line 477
    add-int/lit8 v1, v1, 0x1

    move v4, v6

    .line 479
    :goto_1ad
    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    .line 480
    iput v4, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    .line 481
    add-int/lit8 v2, v3, 0x1

    .line 482
    add-int/lit8 v0, v4, 0x1

    move v3, v2

    move v2, v0

    goto/16 :goto_93

    .line 489
    :cond_1b9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 490
    iget-object v3, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 491
    iget v4, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-eq v4, v8, :cond_1ce

    .line 492
    iget v4, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-eq v4, v13, :cond_1ce

    .line 493
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    goto/16 :goto_aa

    .line 497
    :cond_1ce
    iget v4, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    int-to-float v5, v5

    div-float v5, v1, v5

    mul-float/2addr v4, v5

    .line 498
    iget v3, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v4

    iput v3, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    goto/16 :goto_aa

    :cond_1e0
    move v4, v2

    goto :goto_1ad

    :cond_1e2
    move-object v9, v3

    move-object v14, v1

    move-object v1, v7

    move-object v7, v14

    goto/16 :goto_165

    :cond_1e8
    move-object v9, v2

    move-object v1, v7

    move-object v7, v3

    goto/16 :goto_165

    :cond_1ed
    move v5, v6

    move v0, v6

    move-object v1, v11

    move-object v2, v11

    goto/16 :goto_72
.end method


# virtual methods
.method public addApps(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateApps(Ljava/util/List;)V

    .line 285
    return-void
.end method

.method public getAdapterItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/List;

    return-object v0
.end method

.method public getApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    return-object v0
.end method

.method public getFastScrollerSections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    return-object v0
.end method

.method public getNumAppRows()I
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    return v0
.end method

.method public getSections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSections:Ljava/util/List;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasFilter()Z
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasNoFilteredResults()Z
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public removeApps(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 304
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->onAppsUpdated()V

    .line 305
    return-void

    .line 301
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 302
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/AppInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .registers 2

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 194
    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->addApps(Ljava/util/List;)V

    .line 278
    return-void
.end method

.method public setNumAppsPerRow(IILcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;)V
    .registers 4

    .prologue
    .line 182
    iput p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRow:I

    .line 183
    iput p2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumPredictedAppsPerRow:I

    .line 184
    iput-object p3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mMergeAlgorithm:Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;

    .line 186
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    .line 187
    return-void
.end method

.method public setOrderedFilter(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eq v0, p1, :cond_9

    .line 257
    iput-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    .line 258
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    .line 260
    :cond_9
    return-void
.end method

.method public setPredictedApps(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 268
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mPredictedAppComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 269
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->onAppsUpdated()V

    .line 270
    return-void
.end method

.method public updateApps(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 294
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->onAppsUpdated()V

    .line 295
    return-void

    .line 291
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 292
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/AppInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method
