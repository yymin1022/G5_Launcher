.class public Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;
.super Landroid/app/Activity;
.source "HideAppsSettingActivity.java"

# interfaces
.implements Lcom/lge/launcher3/hideapps/HideAppsAdapter$OnCheckStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$SaveTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HideApps"


# instance fields
.field private mApplyButton:Landroid/widget/Button;

.field private mCancelButton:Landroid/widget/Button;

.field private mCheckCountText:Landroid/widget/TextView;

.field private mGridView:Landroid/widget/GridView;

.field private mGridViewAdapter:Lcom/lge/launcher3/hideapps/HideAppsAdapter;

.field private mLiveIconManager:Lcom/lge/launcher3/liveicon/LiveIconManager;

.field private mLiveIconUpdateListener:Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;

.field private mSaving:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    new-instance v0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1;-><init>(Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;)V

    iput-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mLiveIconUpdateListener:Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;)Landroid/widget/GridView;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;)Lcom/lge/launcher3/hideapps/HideAppsAdapter;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mGridViewAdapter:Lcom/lge/launcher3/hideapps/HideAppsAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;Z)V
    .registers 2

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mSaving:Z

    return-void
.end method

.method private setupActionBar()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 186
    invoke-virtual {p0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 187
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 188
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 189
    const v1, 0x7f040017

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 190
    return-void
.end method

.method private setupViews()V
    .registers 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 94
    const v0, 0x7f0e00a0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mGridView:Landroid/widget/GridView;

    .line 95
    new-instance v0, Lcom/lge/launcher3/hideapps/HideAppsAdapter;

    iget-object v2, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mGridView:Landroid/widget/GridView;

    invoke-direct {v0, p0, v2}, Lcom/lge/launcher3/hideapps/HideAppsAdapter;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mGridViewAdapter:Lcom/lge/launcher3/hideapps/HideAppsAdapter;

    .line 96
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mGridViewAdapter:Lcom/lge/launcher3/hideapps/HideAppsAdapter;

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->setOnCheckStateChangedListener(Lcom/lge/launcher3/hideapps/HideAppsAdapter$OnCheckStateChangedListener;)V

    .line 97
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mGridViewAdapter:Lcom/lge/launcher3/hideapps/HideAppsAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mGridViewAdapter:Lcom/lge/launcher3/hideapps/HideAppsAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    const v0, 0x7f0e00a2

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mCancelButton:Landroid/widget/Button;

    .line 100
    const v0, 0x7f0f0096

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v2, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$2;

    invoke-direct {v2, p0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$2;-><init>(Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f0e00a3

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mApplyButton:Landroid/widget/Button;

    .line 110
    const v0, 0x7f0f0093

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mApplyButton:Landroid/widget/Button;

    new-instance v1, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$3;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$3;-><init>(Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f0e0046

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mCheckCountText:Landroid/widget/TextView;

    .line 120
    invoke-direct {p0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->updateCheckCountText()V

    .line 121
    return-void
.end method

.method private updateCheckCountText()V
    .registers 8

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 206
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mGridViewAdapter:Lcom/lge/launcher3/hideapps/HideAppsAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->getCheckedCount()I

    move-result v0

    .line 207
    iget-object v1, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mGridViewAdapter:Lcom/lge/launcher3/hideapps/HideAppsAdapter;

    invoke-virtual {v1}, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->getTotalCount()I

    move-result v1

    .line 208
    const-string v2, "ar"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "fa"

    .line 209
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    :cond_2f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 210
    const-string v3, "%d/%d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    .line 209
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 212
    :goto_47
    iget-object v1, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mCheckCountText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    return-void

    .line 210
    :cond_4d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d/%d"

    new-array v4, v4, [Ljava/lang/Object;

    .line 211
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    .line 210
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_47
.end method


# virtual methods
.method protected apply()V
    .registers 3

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mSaving:Z

    if-eqz v0, :cond_5

    .line 134
    :goto_4
    return-void

    .line 128
    :cond_5
    invoke-virtual {p0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Home_ChangeHideApps"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mSaving:Z

    .line 130
    new-instance v0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$SaveTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$SaveTask;-><init>(Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$SaveTask;)V

    .line 131
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    invoke-virtual {p0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->finish()V

    goto :goto_4
.end method

.method public onCheckStateChanged()V
    .registers 1

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->updateCheckCountText()V

    .line 230
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 69
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$2$1d5b537b(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f040031

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->setContentView(I)V

    .line 72
    invoke-direct {p0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->setupActionBar()V

    .line 73
    invoke-direct {p0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->setupViews()V

    .line 75
    invoke-static {p0}, Lcom/lge/launcher3/liveicon/LiveIconManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/liveicon/LiveIconManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mLiveIconManager:Lcom/lge/launcher3/liveicon/LiveIconManager;

    .line 76
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mLiveIconManager:Lcom/lge/launcher3/liveicon/LiveIconManager;

    iget-object v1, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mLiveIconUpdateListener:Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/liveicon/LiveIconManager;->registerOnLiveIconUpdateListener(Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;)V

    .line 77
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mLiveIconManager:Lcom/lge/launcher3/liveicon/LiveIconManager;

    iget-object v1, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mLiveIconUpdateListener:Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/liveicon/LiveIconManager;->unregisterOnLiveIconUpdateListener(Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;)V

    .line 89
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mLiveIconManager:Lcom/lge/launcher3/liveicon/LiveIconManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/liveicon/LiveIconManager;->stop()V

    .line 90
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .prologue
    .line 194
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 202
    :goto_7
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 196
    :pswitch_c
    invoke-virtual {p0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->onBackPressed()V

    goto :goto_7

    .line 194
    :pswitch_data_10
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 218
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mGridViewAdapter:Lcom/lge/launcher3/hideapps/HideAppsAdapter;

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->restoreState(Landroid/os/Bundle;)V

    .line 219
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mLiveIconManager:Lcom/lge/launcher3/liveicon/LiveIconManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/liveicon/LiveIconManager;->start()V

    .line 83
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 223
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 224
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->mGridViewAdapter:Lcom/lge/launcher3/hideapps/HideAppsAdapter;

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/hideapps/HideAppsAdapter;->saveState(Landroid/os/Bundle;)V

    .line 225
    return-void
.end method
