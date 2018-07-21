.class public Lcom/android/launcher3/model/WidgetsModel;
.super Ljava/lang/Object;
.source "WidgetsModel.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WidgetsModel"


# instance fields
.field private final mAppFilter:Lcom/android/launcher3/AppFilter;

.field private final mAppNameComparator:Ljava/util/Comparator;

.field private final mAppWidgetMgr:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

.field private final mIconCache:Lcom/android/launcher3/IconCache;

.field private mIndexer:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

.field private mPackageItemInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/model/PackageItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRawList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mTmpPackageItemInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/model/PackageItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWidgetAndShortcutNameComparator:Ljava/util/Comparator;

.field public mWidgetsList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/model/PackageItemInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/IconCache;Lcom/android/launcher3/AppFilter;)V
    .registers 5

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mTmpPackageItemInfos:Ljava/util/HashMap;

    .line 50
    invoke-static {p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mAppWidgetMgr:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 51
    new-instance v0, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetAndShortcutNameComparator:Ljava/util/Comparator;

    .line 52
    new-instance v0, Lcom/android/launcher3/model/AppNameComparator;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/AppNameComparator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/launcher3/model/AppNameComparator;->getAppInfoComparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mAppNameComparator:Ljava/util/Comparator;

    .line 53
    iput-object p2, p0, Lcom/android/launcher3/model/WidgetsModel;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 54
    iput-object p3, p0, Lcom/android/launcher3/model/WidgetsModel;->mAppFilter:Lcom/android/launcher3/AppFilter;

    .line 55
    new-instance v0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    invoke-direct {v0, p1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mIndexer:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    .line 56
    return-void
.end method

.method protected constructor <init>(Lcom/android/launcher3/model/WidgetsModel;)V
    .registers 4

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mTmpPackageItemInfos:Ljava/util/HashMap;

    .line 59
    iget-object v0, p1, Lcom/android/launcher3/model/WidgetsModel;->mAppWidgetMgr:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mAppWidgetMgr:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 61
    iget-object v0, p1, Lcom/android/launcher3/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_66

    .line 62
    iget-object v1, p1, Lcom/android/launcher3/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    monitor-enter v1

    .line 63
    :try_start_23
    iget-object v0, p1, Lcom/android/launcher3/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    .line 62
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_63

    .line 69
    :goto_2e
    iget-object v0, p1, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    if-eqz v0, :cond_71

    .line 70
    iget-object v1, p1, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    monitor-enter v1

    .line 71
    :try_start_35
    iget-object v0, p1, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    .line 70
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_6e

    .line 77
    :goto_40
    iget-object v0, p1, Lcom/android/launcher3/model/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7c

    .line 78
    iget-object v1, p1, Lcom/android/launcher3/model/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 79
    :try_start_47
    iget-object v0, p1, Lcom/android/launcher3/model/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    .line 78
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_79

    .line 85
    :goto_52
    iget-object v0, p1, Lcom/android/launcher3/model/WidgetsModel;->mWidgetAndShortcutNameComparator:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetAndShortcutNameComparator:Ljava/util/Comparator;

    .line 86
    iget-object v0, p1, Lcom/android/launcher3/model/WidgetsModel;->mAppNameComparator:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mAppNameComparator:Ljava/util/Comparator;

    .line 87
    iget-object v0, p1, Lcom/android/launcher3/model/WidgetsModel;->mIconCache:Lcom/android/launcher3/IconCache;

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 88
    iget-object v0, p1, Lcom/android/launcher3/model/WidgetsModel;->mAppFilter:Lcom/android/launcher3/AppFilter;

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mAppFilter:Lcom/android/launcher3/AppFilter;

    .line 89
    return-void

    .line 62
    :catchall_63
    move-exception v0

    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v0

    .line 66
    :cond_66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    goto :goto_2e

    .line 70
    :catchall_6e
    move-exception v0

    :try_start_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v0

    .line 74
    :cond_71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    goto :goto_40

    .line 78
    :catchall_79
    move-exception v0

    :try_start_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v0

    .line 82
    :cond_7c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    goto :goto_52
.end method

.method private setTitleByFirstItemTitle()V
    .registers 6

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 212
    return-void

    .line 202
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/PackageItemInfo;

    .line 203
    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 204
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 205
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 206
    if-eqz v3, :cond_6

    .line 207
    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetAndShortcutNameComparator:Ljava/util/Comparator;

    check-cast v1, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;

    .line 208
    invoke-virtual {v1, v3}, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->loadLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 207
    iput-object v1, v0, Lcom/android/launcher3/model/PackageItemInfo;->title:Ljava/lang/CharSequence;

    goto :goto_6
.end method


# virtual methods
.method public clone()Lcom/android/launcher3/model/WidgetsModel;
    .registers 2

    .prologue
    .line 221
    new-instance v0, Lcom/android/launcher3/model/WidgetsModel;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/WidgetsModel;-><init>(Lcom/android/launcher3/model/WidgetsModel;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/model/WidgetsModel;->clone()Lcom/android/launcher3/model/WidgetsModel;

    move-result-object v0

    return-object v0
.end method

.method public getPackageItemInfo(I)Lcom/android/launcher3/model/PackageItemInfo;
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    if-gez p1, :cond_c

    .line 102
    :cond_a
    const/4 v0, 0x0

    .line 104
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/PackageItemInfo;

    goto :goto_b
.end method

.method public getPackageSize()I
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getRawList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSortedWidgets(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public setWidgetsAndShortcuts(Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 116
    invoke-static {}, Lcom/android/launcher3/Utilities;->assertWorkerThread()V

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4a

    .line 118
    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 119
    :try_start_c
    iput-object p1, p0, Lcom/android/launcher3/model/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    .line 118
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_47

    .line 131
    :goto_f
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mTmpPackageItemInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 134
    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    monitor-enter v1

    .line 135
    :try_start_17
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 134
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_4d

    .line 137
    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    monitor-enter v1

    .line 138
    :try_start_20
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_50

    .line 142
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2a
    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_53

    .line 192
    invoke-direct {p0}, Lcom/android/launcher3/model/WidgetsModel;->setTitleByFirstItemTitle()V

    .line 195
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel;->mAppNameComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10c

    .line 199
    return-void

    .line 118
    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0

    .line 122
    :cond_4a
    iput-object p1, p0, Lcom/android/launcher3/model/WidgetsModel;->mRawList:Ljava/util/ArrayList;

    goto :goto_f

    .line 134
    :catchall_4d
    move-exception v0

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0

    .line 137
    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v0

    .line 142
    :cond_53
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 143
    const-string v0, ""

    .line 146
    instance-of v2, v1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v2, :cond_8e

    move-object v0, v1

    .line 147
    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 148
    iget-object v2, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 149
    iget-object v4, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 150
    iget-object v6, p0, Lcom/android/launcher3/model/WidgetsModel;->mAppWidgetMgr:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v6, v0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    .line 159
    :goto_71
    if-eqz v0, :cond_75

    if-nez v2, :cond_ae

    .line 160
    :cond_75
    const-string v0, "WidgetsModel"

    const-string v2, "Widget cannot be set for %s."

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 151
    :cond_8e
    instance-of v2, v1, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_121

    move-object v0, v1

    .line 152
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 153
    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 154
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 153
    invoke-direct {v2, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 156
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_71

    .line 163
    :cond_ae
    iget-object v6, p0, Lcom/android/launcher3/model/WidgetsModel;->mAppFilter:Lcom/android/launcher3/AppFilter;

    if-eqz v6, :cond_ba

    iget-object v6, p0, Lcom/android/launcher3/model/WidgetsModel;->mAppFilter:Lcom/android/launcher3/AppFilter;

    invoke-virtual {v6, v0}, Lcom/android/launcher3/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 171
    :cond_ba
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mTmpPackageItemInfos:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/PackageItemInfo;

    .line 172
    iget-object v6, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 173
    if-eqz v0, :cond_d1

    .line 174
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a

    .line 176
    :cond_d1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v1, Lcom/android/launcher3/model/PackageItemInfo;

    invoke-direct {v1, v4}, Lcom/android/launcher3/model/PackageItemInfo;-><init>(Ljava/lang/String;)V

    .line 179
    iget-object v6, p0, Lcom/android/launcher3/model/WidgetsModel;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v6, v4, v2, v7, v1}, Lcom/android/launcher3/IconCache;->getTitleAndIconForApp(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;ZLcom/android/launcher3/model/PackageItemInfo;)V

    .line 181
    iget-object v2, p0, Lcom/android/launcher3/model/WidgetsModel;->mIndexer:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    iget-object v6, v1, Lcom/android/launcher3/model/PackageItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/model/PackageItemInfo;->titleSectionName:Ljava/lang/String;

    .line 182
    iget-object v2, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    monitor-enter v2

    .line 183
    :try_start_f0
    iget-object v6, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    monitor-exit v2
    :try_end_f6
    .catchall {:try_start_f0 .. :try_end_f6} :catchall_109

    .line 185
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mTmpPackageItemInfos:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v2, p0, Lcom/android/launcher3/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    monitor-enter v2

    .line 187
    :try_start_fe
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mPackageItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    monitor-exit v2

    goto/16 :goto_2a

    :catchall_106
    move-exception v0

    monitor-exit v2
    :try_end_108
    .catchall {:try_start_fe .. :try_end_108} :catchall_106

    throw v0

    .line 182
    :catchall_109
    move-exception v0

    :try_start_10a
    monitor-exit v2
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    throw v0

    .line 196
    :cond_10c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/PackageItemInfo;

    .line 197
    iget-object v2, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetAndShortcutNameComparator:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_40

    :cond_121
    move-object v2, v3

    move-object v4, v0

    move-object v0, v3

    goto/16 :goto_71
.end method
