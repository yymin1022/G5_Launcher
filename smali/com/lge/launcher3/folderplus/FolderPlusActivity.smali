.class public Lcom/lge/launcher3/folderplus/FolderPlusActivity;
.super Landroid/app/Activity;
.source "FolderPlusActivity.java"

# interfaces
.implements Lcom/lge/launcher3/folderplus/FolderPlusAdapter$OnCheckStateChangedListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FolderPlus"


# instance fields
.field private mApplyButton:Landroid/widget/Button;

.field private mCancelButton:Landroid/widget/Button;

.field private mCheckCountText:Landroid/widget/TextView;

.field protected mCheckedAll:Z

.field private mGridView:Landroid/widget/GridView;

.field private mGridViewAdapter:Lcom/lge/launcher3/folderplus/FolderPlusAdapter;

.field private mLiveIconManager:Lcom/lge/launcher3/liveicon/LiveIconManager;

.field private mLiveIconUpdateListener:Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaving:Z

.field private mSuppressFinish:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mSuppressFinish:Z

    .line 53
    new-instance v0, Lcom/lge/launcher3/folderplus/FolderPlusActivity$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity$1;-><init>(Lcom/lge/launcher3/folderplus/FolderPlusActivity;)V

    iput-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    new-instance v0, Lcom/lge/launcher3/folderplus/FolderPlusActivity$2;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity$2;-><init>(Lcom/lge/launcher3/folderplus/FolderPlusActivity;)V

    iput-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mLiveIconUpdateListener:Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/folderplus/FolderPlusActivity;)Landroid/widget/GridView;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method private registerFinishReceiver()V
    .registers 4

    .prologue
    .line 247
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 248
    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_FINISH_FOLDERPLUS:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    return-void
.end method

.method private setRequestedOrientation()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 101
    invoke-virtual {p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "folderOrientation"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 103
    invoke-virtual {p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v3, :cond_2b

    move v0, v1

    :goto_19
    iput-boolean v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mSuppressFinish:Z

    .line 105
    invoke-virtual {p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_42

    .line 122
    :goto_2a
    return-void

    :cond_2b
    move v0, v2

    .line 103
    goto :goto_19

    .line 108
    :pswitch_2d
    invoke-virtual {p0, v1}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->setRequestedOrientation(I)V

    goto :goto_2a

    .line 111
    :pswitch_31
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->setRequestedOrientation(I)V

    goto :goto_2a

    .line 114
    :pswitch_37
    invoke-virtual {p0, v2}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->setRequestedOrientation(I)V

    goto :goto_2a

    .line 117
    :pswitch_3b
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->setRequestedOrientation(I)V

    goto :goto_2a

    .line 106
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_37
        :pswitch_31
        :pswitch_3b
    .end packed-switch
.end method

.method private setupActionBar()V
    .registers 3

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 193
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 194
    const v1, 0x7f040017

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 195
    return-void
.end method

.method private setupViews()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 126
    invoke-virtual {p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 127
    const-string v3, "folderId"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 129
    const v0, 0x7f0e00a0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mGridView:Landroid/widget/GridView;

    .line 130
    new-instance v0, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;

    iget-object v3, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mGridView:Landroid/widget/GridView;

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;J)V

    iput-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mGridViewAdapter:Lcom/lge/launcher3/folderplus/FolderPlusAdapter;

    .line 131
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mGridViewAdapter:Lcom/lge/launcher3/folderplus/FolderPlusAdapter;

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->setOnCheckStateChangedListener(Lcom/lge/launcher3/folderplus/FolderPlusAdapter$OnCheckStateChangedListener;)V

    .line 132
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mGridViewAdapter:Lcom/lge/launcher3/folderplus/FolderPlusAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mGridViewAdapter:Lcom/lge/launcher3/folderplus/FolderPlusAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 135
    const v0, 0x7f0e00a2

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mCancelButton:Landroid/widget/Button;

    .line 136
    const v0, 0x7f0f0096

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v3, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/lge/launcher3/folderplus/FolderPlusActivity$3;

    invoke-direct {v3, p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity$3;-><init>(Lcom/lge/launcher3/folderplus/FolderPlusActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v0, 0x7f0e00a3

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mApplyButton:Landroid/widget/Button;

    .line 147
    const v0, 0x7f0f0093

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v2, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mApplyButton:Landroid/widget/Button;

    new-instance v2, Lcom/lge/launcher3/folderplus/FolderPlusActivity$4;

    invoke-direct {v2, p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity$4;-><init>(Lcom/lge/launcher3/folderplus/FolderPlusActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v0, 0x7f0e0046

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mCheckCountText:Landroid/widget/TextView;

    .line 158
    invoke-direct {p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->updateCheckCountText()V

    .line 160
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mGridViewAdapter:Lcom/lge/launcher3/folderplus/FolderPlusAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->getCheckedCount()I

    move-result v0

    iget-object v2, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mGridViewAdapter:Lcom/lge/launcher3/folderplus/FolderPlusAdapter;

    invoke-virtual {v2}, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->getTotalCount()I

    move-result v2

    if-eq v0, v2, :cond_d0

    const/4 v0, 0x1

    :goto_9f
    iput-boolean v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mCheckedAll:Z

    .line 161
    const v0, 0x7f0e009f

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 162
    const v2, 0x7f0f0174

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 163
    const-string v2, "list_separator_text_color"

    invoke-static {p0, v2}, Lcom/lge/launcher3/util/DDTUtils;->getLGEColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    const-string v2, "type_c01_sp"

    invoke-static {p0, v2}, Lcom/lge/launcher3/util/DDTUtils;->getLGEDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 165
    const-string v2, "list_separator_background_color"

    invoke-static {p0, v2}, Lcom/lge/launcher3/util/DDTUtils;->getLGEColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    return-void

    :cond_d0
    move v0, v1

    .line 160
    goto :goto_9f
.end method

.method private unregisterFinishReceiver()V
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 254
    return-void
.end method

.method private updateCheckCountText()V
    .registers 8

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 224
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mGridViewAdapter:Lcom/lge/launcher3/folderplus/FolderPlusAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->getCheckedCount()I

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mGridViewAdapter:Lcom/lge/launcher3/folderplus/FolderPlusAdapter;

    invoke-virtual {v1}, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->getTotalCount()I

    move-result v1

    .line 227
    const-string v2, "ar"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "fa"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 228
    :cond_2f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d/%d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_47
    iget-object v1, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mCheckCountText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    return-void

    .line 229
    :cond_4d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d/%d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_47
.end method


# virtual methods
.method protected apply()V
    .registers 3

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mSaving:Z

    if-eqz v0, :cond_5

    .line 189
    :goto_4
    return-void

    .line 184
    :cond_5
    invoke-virtual {p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Home_AddFolderItemByPlus"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mSaving:Z

    .line 186
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mGridViewAdapter:Lcom/lge/launcher3/folderplus/FolderPlusAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/folderplus/FolderPlusAdapter;->apply()V

    .line 188
    invoke-virtual {p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->finish()V

    goto :goto_4
.end method

.method public onCheckStateChanged()V
    .registers 1

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->updateCheckCountText()V

    .line 236
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 87
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$2$1d5b537b(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const-string v0, "FolderPlus"

    const-string v1, "Start"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->registerFinishReceiver()V

    .line 91
    invoke-direct {p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->setRequestedOrientation()V

    .line 92
    const v0, 0x7f040031

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->setContentView(I)V

    .line 93
    invoke-direct {p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->setupActionBar()V

    .line 94
    invoke-direct {p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->setupViews()V

    .line 96
    invoke-static {p0}, Lcom/lge/launcher3/liveicon/LiveIconManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/liveicon/LiveIconManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mLiveIconManager:Lcom/lge/launcher3/liveicon/LiveIconManager;

    .line 97
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mLiveIconManager:Lcom/lge/launcher3/liveicon/LiveIconManager;

    iget-object v1, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mLiveIconUpdateListener:Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/liveicon/LiveIconManager;->registerOnLiveIconUpdateListener(Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;)V

    .line 98
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 241
    invoke-direct {p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->unregisterFinishReceiver()V

    .line 242
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mLiveIconManager:Lcom/lge/launcher3/liveicon/LiveIconManager;

    iget-object v1, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mLiveIconUpdateListener:Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/liveicon/LiveIconManager;->unregisterOnLiveIconUpdateListener(Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;)V

    .line 243
    const-string v0, "FolderPlus"

    const-string v1, "End"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .prologue
    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 207
    :goto_7
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 201
    :pswitch_c
    invoke-virtual {p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->onBackPressed()V

    goto :goto_7

    .line 199
    :pswitch_data_10
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 215
    iget-boolean v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mSuppressFinish:Z

    if-nez v0, :cond_10

    .line 216
    const/16 v0, 0x459

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->setResult(I)V

    .line 217
    invoke-virtual {p0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->finish()V

    .line 221
    :goto_f
    return-void

    .line 219
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->mSuppressFinish:Z

    goto :goto_f
.end method
