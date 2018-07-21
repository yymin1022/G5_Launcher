.class public Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SBSettingListAdapter.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final COUNT_TYPES:I = 0x2

.field private static final TYPE_CHECK:I = 0x0

.field private static final TYPE_UNCHECK:I = 0x1


# instance fields
.field private mExceedLimitedToast:Landroid/widget/Toast;

.field private mIsEnabled:Z

.field private mLimitedNum:I

.field mObserver:Lcom/lge/launcher3/smartbulletin/provider/SBContentObserver;

.field mProviderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    .line 31
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mObserver:Lcom/lge/launcher3/smartbulletin/provider/SBContentObserver;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mLimitedNum:I

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mIsEnabled:Z

    .line 268
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mExceedLimitedToast:Landroid/widget/Toast;

    .line 38
    invoke-static {p1}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->getAllProvider(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    .line 39
    new-instance v0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$1;-><init>(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mObserver:Lcom/lge/launcher3/smartbulletin/provider/SBContentObserver;

    .line 53
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mObserver:Lcom/lge/launcher3/smartbulletin/provider/SBContentObserver;

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/smartbulletin/provider/SBContentObserver;->registerObserver(Landroid/content/Context;)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    const v1, 0x7f0c003e

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mLimitedNum:I

    .line 56
    return-void
.end method

.method private findInfoByComponentName(Ljava/util/List;Landroid/content/ComponentName;)Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;"
        }
    .end annotation

    .prologue
    .line 152
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 157
    const/4 v0, 0x0

    :goto_b
    return-object v0

    .line 152
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 153
    invoke-virtual {v0, p2}, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->isSameComponent(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_b
.end method

.method private getInfoFromList(Ljava/util/List;Landroid/content/ComponentName;)Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;"
        }
    .end annotation

    .prologue
    .line 217
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 222
    const/4 v0, 0x0

    :goto_b
    return-object v0

    .line 217
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 218
    if-eqz v0, :cond_4

    invoke-virtual {v0, p2}, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->isSameComponent(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_b
.end method

.method private getSmartBulletinProviderCount()I
    .registers 5

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 265
    return v1

    .line 260
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 261
    iget-object v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/lit16 v0, v0, 0x100

    const/16 v3, 0x100

    if-ne v0, v3, :cond_8

    .line 262
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8
.end method

.method private isChangeState(Ljava/util/List;Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;",
            ">;",
            "Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p2, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 206
    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->getInfoFromList(Ljava/util/List;Landroid/content/ComponentName;)Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_14

    if-eqz p2, :cond_14

    iget-boolean v1, p2, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    iget-boolean v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    if-eq v1, v0, :cond_14

    .line 209
    const/4 v0, 0x1

    .line 211
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private makeExceedLimitedToast(Landroid/content/Context;)Landroid/widget/Toast;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 278
    const v1, 0x7f0f0086

    .line 277
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mLimitedNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method private setPositionYByIndex(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 178
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    monitor-enter v2

    .line 180
    if-nez p1, :cond_7

    .line 181
    :try_start_5
    monitor-exit v2

    .line 202
    :goto_6
    return-void

    .line 184
    :cond_7
    invoke-static {p1}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->getAllProvider(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 187
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_20

    .line 200
    invoke-static {p1}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->getAllProvider(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    .line 178
    monitor-exit v2

    goto :goto_6

    :catchall_1d
    move-exception v0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw v0

    .line 188
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 189
    iget-boolean v4, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    if-eqz v4, :cond_44

    .line 190
    iput v1, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mPostionY:I

    .line 194
    :cond_2e
    :goto_2e
    invoke-static {p1, v0}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->updateByInfo(Landroid/content/Context;Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)V

    .line 195
    invoke-direct {p0, v3, v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->isChangeState(Ljava/util/List;Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 196
    iget-boolean v4, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    .line 197
    iget-object v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 196
    invoke-static {p1, v4, v0}, Lcom/lge/launcher3/homesettings/SmartBulletinAction;->sendProviderEnabled(Landroid/content/Context;ZLandroid/content/ComponentName;)V

    .line 187
    :cond_40
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 191
    :cond_44
    iget-boolean v4, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    if-nez v4, :cond_2e

    .line 192
    add-int/lit16 v4, v1, 0x3e8

    iput v4, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mPostionY:I
    :try_end_4c
    .catchall {:try_start_20 .. :try_end_4c} :catchall_1d

    goto :goto_2e
.end method

.method private showExceedLimitedToast(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mExceedLimitedToast:Landroid/widget/Toast;

    if-nez v0, :cond_a

    .line 271
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->makeExceedLimitedToast(Landroid/content/Context;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mExceedLimitedToast:Landroid/widget/Toast;

    .line 273
    :cond_a
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mExceedLimitedToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 274
    return-void
.end method


# virtual methods
.method public drop(II)V
    .registers 6

    .prologue
    .line 162
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    monitor-enter v1

    .line 163
    if-ne p1, p2, :cond_7

    .line 164
    :try_start_5
    monitor-exit v1

    .line 171
    :goto_6
    return-void

    .line 166
    :cond_7
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 167
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 168
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    invoke-interface {v2, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 162
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1e

    .line 170
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->notifyDataSetChanged()V

    goto :goto_6

    .line 162
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEnabledItemNum()I
    .registers 4

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 240
    return v1

    .line 235
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 236
    iget-boolean v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    if-eqz v0, :cond_8

    .line 237
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8
.end method

.method public getEnabledItemNum(Landroid/content/Context;)I
    .registers 5

    .prologue
    .line 226
    invoke-static {p1}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->getAllProvider(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 227
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_12

    .line 228
    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    .line 230
    :cond_12
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->getEnabledItemNum()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 75
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 81
    iget-boolean v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 99
    const-string v0, "ConvertView"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-nez p2, :cond_97

    .line 102
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    const v1, 0x7f040043

    .line 102
    invoke-static {v0, v1, v2}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 105
    new-instance v1, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$ViewHolder;

    invoke-direct {v1, p0, v2}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$ViewHolder;-><init>(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$ViewHolder;)V

    .line 106
    const v0, 0x7f0e000c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$ViewHolder;->dragHandle:Landroid/widget/ImageView;

    .line 107
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/DDTUtils;->gettextColorPrimaryType5FromTheme(Landroid/content/Context;I)I

    move-result v0

    .line 108
    if-eqz v0, :cond_3d

    .line 109
    iget-object v2, v1, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$ViewHolder;->dragHandle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 111
    :cond_3d
    const v0, 0x7f0e00dd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$ViewHolder;->dragTitle:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0e00de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, v1, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$ViewHolder;->providerName:Landroid/widget/Switch;

    .line 113
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 118
    :goto_56
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 119
    iget-object v2, v1, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$ViewHolder;->dragHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->isEnabled(I)Z

    move-result v3

    invoke-static {v3}, Lcom/lge/launcher3/util/ColorUtilsExtension;->getEnableAlpha(Z)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 120
    iget-object v2, v1, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$ViewHolder;->dragTitle:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v2, v1, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$ViewHolder;->dragTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->isEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 122
    iget-object v2, v1, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$ViewHolder;->providerName:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->isEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 123
    iget-object v2, v1, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$ViewHolder;->providerName:Landroid/widget/Switch;

    iget-boolean v3, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 124
    iget-object v1, v1, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$ViewHolder;->providerName:Landroid/widget/Switch;

    iget-object v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 125
    return-object p2

    .line 115
    :cond_97
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_56
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x2

    return v0
.end method

.method public getWidgetCount()I
    .registers 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->getSmartBulletinProviderCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mIsEnabled:Z

    return v0
.end method

.method public onClick(Landroid/widget/Switch;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-virtual {p1}, Landroid/widget/Switch;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 130
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->findInfoByComponentName(Ljava/util/List;Landroid/content/ComponentName;)Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    move-result-object v2

    .line 131
    if-nez v2, :cond_10

    .line 147
    :goto_f
    return-void

    .line 134
    :cond_10
    iget-boolean v0, v2, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    .line 135
    if-nez v0, :cond_2c

    .line 136
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->getEnabledItemNum()I

    move-result v0

    iget v3, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mLimitedNum:I

    if-lt v0, v3, :cond_2a

    .line 137
    invoke-virtual {p1}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->showExceedLimitedToast(Landroid/content/Context;)V

    move v0, v1

    .line 145
    :goto_24
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 146
    iput-boolean v0, v2, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    goto :goto_f

    .line 140
    :cond_2a
    const/4 v0, 0x1

    .line 142
    goto :goto_24

    :cond_2c
    move v0, v1

    .line 143
    goto :goto_24
.end method

.method public onDestroy(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mObserver:Lcom/lge/launcher3/smartbulletin/provider/SBContentObserver;

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/smartbulletin/provider/SBContentObserver;->unregisterObserver(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mIsEnabled:Z

    .line 251
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->notifyDataSetChanged()V

    .line 252
    return-void
.end method

.method public updateData(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->setPositionYByIndex(Landroid/content/Context;)V

    .line 175
    return-void
.end method
