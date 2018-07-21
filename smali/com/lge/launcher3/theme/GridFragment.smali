.class public Lcom/lge/launcher3/theme/GridFragment;
.super Landroid/support/v4/app/Fragment;
.source "GridFragment.java"


# static fields
.field private static final MSG_PLUS_CLICK:I = 0x1


# instance fields
.field private activity:Landroid/app/Activity;

.field gridItems:[Lcom/lge/launcher3/theme/GridItems;

.field private mGridAdapter:Lcom/lge/launcher3/theme/GridAdapter;

.field private mGridView:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mNumColums:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPlusClickable:Z

.field private mPreveiwHeight:I

.field private mPreviewTopMargin:I

.field private mPreviewWidth:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/lge/launcher3/theme/GridItems;

    iput-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->gridItems:[Lcom/lge/launcher3/theme/GridItems;

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mNumColums:I

    .line 40
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/lge/launcher3/theme/GridFragment$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/theme/GridFragment$1;-><init>(Lcom/lge/launcher3/theme/GridFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mHandler:Landroid/os/Handler;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mPlusClickable:Z

    .line 62
    return-void
.end method

.method public constructor <init>([Lcom/lge/launcher3/theme/GridItems;Landroid/app/Activity;III)V
    .registers 8

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/lge/launcher3/theme/GridItems;

    iput-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->gridItems:[Lcom/lge/launcher3/theme/GridItems;

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mNumColums:I

    .line 40
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/lge/launcher3/theme/GridFragment$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/theme/GridFragment$1;-><init>(Lcom/lge/launcher3/theme/GridFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mHandler:Landroid/os/Handler;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mPlusClickable:Z

    .line 66
    iput-object p1, p0, Lcom/lge/launcher3/theme/GridFragment;->gridItems:[Lcom/lge/launcher3/theme/GridItems;

    .line 67
    iput-object p2, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    .line 68
    iput p3, p0, Lcom/lge/launcher3/theme/GridFragment;->mPreviewWidth:I

    .line 69
    iput p4, p0, Lcom/lge/launcher3/theme/GridFragment;->mPreveiwHeight:I

    .line 70
    iput p5, p0, Lcom/lge/launcher3/theme/GridFragment;->mPreviewTopMargin:I

    .line 72
    if-eqz p2, :cond_34

    .line 73
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/theme/GridFragment;->setColumns(Landroid/content/res/Configuration;)V

    .line 74
    invoke-direct {p0}, Lcom/lge/launcher3/theme/GridFragment;->init()V

    .line 76
    :cond_34
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/theme/GridFragment;Z)V
    .registers 2

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/lge/launcher3/theme/GridFragment;->mPlusClickable:Z

    return-void
.end method

.method static synthetic access$1(Lcom/lge/launcher3/theme/GridFragment;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/launcher3/theme/GridFragment;)Landroid/content/pm/PackageManager;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private clickSmartWorld(Landroid/view/View;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 319
    const-string v0, "com.lge.themepark.theme_plus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 320
    iget-boolean v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mPlusClickable:Z

    if-eqz v0, :cond_25

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mPlusClickable:Z

    .line 322
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 323
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/launcher3/theme/GridFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 324
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/GridFragment;->connectLGSmartWorldThemeCategory()V

    .line 327
    :cond_25
    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 128
    return-void
.end method

.method private setColumns(Landroid/content/res/Configuration;)V
    .registers 4

    .prologue
    const/4 v1, 0x2

    .line 79
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_14

    .line 80
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mNumColums:I

    .line 84
    :goto_8
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_13

    .line 85
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mGridView:Landroid/widget/GridView;

    iget v1, p0, Lcom/lge/launcher3/theme/GridFragment;->mNumColums:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 87
    :cond_13
    return-void

    .line 82
    :cond_14
    iput v1, p0, Lcom/lge/launcher3/theme/GridFragment;->mNumColums:I

    goto :goto_8
.end method


# virtual methods
.method public cancelAllPreviewTask()V
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mGridAdapter:Lcom/lge/launcher3/theme/GridAdapter;

    if-eqz v0, :cond_9

    .line 350
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mGridAdapter:Lcom/lge/launcher3/theme/GridAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/GridAdapter;->cancelAllTasks()V

    .line 352
    :cond_9
    return-void
.end method

.method public checkApp(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 131
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 133
    :try_start_5
    iget-object v1, p0, Lcom/lge/launcher3/theme/GridFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_b} :catch_10

    .line 138
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_f
    return v0

    .line 135
    :catch_10
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_f
.end method

.method public connectLGSmartWorldThemeCategory()V
    .registers 2

    .prologue
    .line 142
    const-string v0, "com.lg.apps.cubeapp"

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/GridFragment;->checkApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 143
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/GridFragment;->startLGSmartWorld()V

    .line 152
    :goto_b
    return-void

    .line 144
    :cond_c
    const-string v0, "com.lge.apps.jp.phone"

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/GridFragment;->checkApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 145
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/GridFragment;->startLGSmartWorldJP()V

    goto :goto_b

    .line 146
    :cond_18
    const-string v0, "com.lge.lgworld"

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/GridFragment;->checkApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 147
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/GridFragment;->startLGSmartWorldGL()V

    goto :goto_b

    .line 149
    :cond_24
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/GridFragment;->showThemeSmartWorldDialog()V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mPlusClickable:Z

    goto :goto_b
.end method

.method public connectLGSmartWorldThemeDetail(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 233
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.lgworld.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    const-string v1, "com.lge.lgworld"

    .line 235
    const-string v2, "com.lge.lgworld.LGReceiver"

    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v1, "lgworld.receiver"

    const-string v2, "LGSW_INVOKE_DETAIL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v1, "APP_PID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    return-void
.end method

.method public gridAdapterNotifyDataSetChanged()V
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mGridAdapter:Lcom/lge/launcher3/theme/GridAdapter;

    if-eqz v0, :cond_9

    .line 343
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mGridAdapter:Lcom/lge/launcher3/theme/GridAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/GridAdapter;->notifyDataSetChanged()V

    .line 345
    :cond_9
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 110
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_38

    .line 111
    new-instance v0, Lcom/lge/launcher3/theme/GridAdapter;

    iget-object v1, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/lge/launcher3/theme/GridFragment;->gridItems:[Lcom/lge/launcher3/theme/GridItems;

    iget v3, p0, Lcom/lge/launcher3/theme/GridFragment;->mPreviewWidth:I

    iget v4, p0, Lcom/lge/launcher3/theme/GridFragment;->mPreveiwHeight:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/theme/GridAdapter;-><init>(Landroid/content/Context;[Lcom/lge/launcher3/theme/GridItems;II)V

    iput-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mGridAdapter:Lcom/lge/launcher3/theme/GridAdapter;

    .line 112
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_2e

    .line 113
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lge/launcher3/theme/GridFragment;->mGridAdapter:Lcom/lge/launcher3/theme/GridAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/theme/GridFragment;->setColumns(Landroid/content/res/Configuration;)V

    .line 117
    :cond_2e
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/lge/launcher3/theme/GridFragment$2;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/theme/GridFragment$2;-><init>(Lcom/lge/launcher3/theme/GridFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    :cond_38
    return-void
.end method

.method public onClick(Landroid/view/View;I)V
    .registers 7

    .prologue
    .line 294
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->gridItems:[Lcom/lge/launcher3/theme/GridItems;

    aget-object v0, v0, p2

    iget-object v1, v0, Lcom/lge/launcher3/theme/GridItems;->mInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    .line 295
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    if-eqz v0, :cond_24

    .line 296
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->isDeleteMode()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 297
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getDetailActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 316
    :cond_24
    :goto_24
    return-void

    .line 301
    :cond_25
    iget-boolean v0, v1, Lcom/lge/launcher3/theme/LGThemeInfo;->mIsInstalled:Z

    if-eqz v0, :cond_59

    .line 302
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeChange;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/theme/LGThemeChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeChange;->isChangingTheme()Z

    move-result v0

    if-nez v0, :cond_24

    .line 303
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    const-class v3, Lcom/lge/launcher3/theme/LGThemeDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    const-string v2, "selectTheme"

    iget-object v1, v1, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    iget-object v1, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    .line 306
    const/16 v2, 0x3ec

    .line 305
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 307
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->setDetailActivityStarted(Z)V

    goto :goto_24

    .line 310
    :cond_59
    iget-object v0, v1, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/theme/GridFragment;->clickSmartWorld(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_24

    .line 312
    :cond_5f
    iget-boolean v0, v1, Lcom/lge/launcher3/theme/LGThemeInfo;->mIsSystem:Z

    if-nez v0, :cond_24

    iget-boolean v0, v1, Lcom/lge/launcher3/theme/LGThemeInfo;->mIsInstalled:Z

    if-eqz v0, :cond_24

    .line 313
    iget-object v0, v1, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/GridFragment;->showThemeDeleteDialog(Ljava/lang/String;)V

    goto :goto_24
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    .line 93
    const v0, 0x7f040015

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 94
    const v0, 0x7f0e0040

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mGridView:Landroid/widget/GridView;

    .line 95
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mGridView:Landroid/widget/GridView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setImportantForAccessibility(I)V

    .line 97
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 98
    iget v2, p0, Lcom/lge/launcher3/theme/GridFragment;->mPreviewTopMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 99
    iget-object v2, p0, Lcom/lge/launcher3/theme/GridFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_3b

    .line 102
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/theme/GridFragment;->setColumns(Landroid/content/res/Configuration;)V

    .line 104
    :cond_3b
    return-object v1
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 331
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 332
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 333
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 337
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mPlusClickable:Z

    .line 339
    return-void
.end method

.method protected showThemeDeleteDialog(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 257
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 258
    const v1, 0x7f0f0094

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 259
    const v1, 0x7f0f0095

    new-instance v2, Lcom/lge/launcher3/theme/GridFragment$6;

    invoke-direct {v2, p0, p1}, Lcom/lge/launcher3/theme/GridFragment$6;-><init>(Lcom/lge/launcher3/theme/GridFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 275
    const v1, 0x7f0f0096

    new-instance v2, Lcom/lge/launcher3/theme/GridFragment$7;

    invoke-direct {v2, p0}, Lcom/lge/launcher3/theme/GridFragment$7;-><init>(Lcom/lge/launcher3/theme/GridFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 282
    new-instance v1, Lcom/lge/launcher3/theme/GridFragment$8;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/theme/GridFragment$8;-><init>(Lcom/lge/launcher3/theme/GridFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 291
    return-void
.end method

.method protected showThemeSmartWorldDialog()V
    .registers 5

    .prologue
    const v3, 0x7f0f0099

    const v2, 0x7f0f0028

    .line 197
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lge/launcher3/util/Utilities;->hasDeviceOwner(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 198
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 200
    const v1, 0x7f0f0098

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 202
    new-instance v1, Lcom/lge/launcher3/theme/GridFragment$3;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/theme/GridFragment$3;-><init>(Lcom/lge/launcher3/theme/GridFragment;)V

    .line 201
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 230
    :goto_30
    return-void

    .line 210
    :cond_31
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 212
    const v1, 0x7f0f0097

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 214
    new-instance v1, Lcom/lge/launcher3/theme/GridFragment$4;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/theme/GridFragment$4;-><init>(Lcom/lge/launcher3/theme/GridFragment;)V

    .line 213
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 220
    const v1, 0x7f0f0029

    .line 221
    new-instance v2, Lcom/lge/launcher3/theme/GridFragment$5;

    invoke-direct {v2, p0}, Lcom/lge/launcher3/theme/GridFragment$5;-><init>(Lcom/lge/launcher3/theme/GridFragment;)V

    .line 220
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_30
.end method

.method public startAppManager()V
    .registers 4

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "com.lge.appbox.client"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_16

    .line 247
    const-string v1, "packagename"

    const-string v2, "com.lge.lgworld"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 254
    :cond_16
    :goto_16
    return-void

    .line 251
    :catch_17
    move-exception v0

    invoke-virtual {p0}, Lcom/lge/launcher3/theme/GridFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Can\'t excute AppManager! Check the AppManager"

    .line 252
    const/4 v2, 0x0

    .line 251
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_16
.end method

.method public startLGSmartWorld()V
    .registers 4

    .prologue
    .line 156
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 157
    const-string v1, "com.lg.apps.cubeapp"

    .line 158
    const-string v2, "com.lgworld.mobile.phone.ux.LGWorldIntroActivity"

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v1, "catCode"

    const-string v2, "000018"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v1, "catName"

    const-string v2, "\ud14c\ub9c8"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v1, "isCategory"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    const-string v1, "catListTpCode"

    const-string v2, "00"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v1, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 167
    :goto_2c
    return-void

    .line 165
    :catch_2d
    move-exception v0

    invoke-virtual {p0}, Lcom/lge/launcher3/theme/GridFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Can\'t excute SmartWorld!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2c
.end method

.method public startLGSmartWorldGL()V
    .registers 4

    .prologue
    .line 183
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.lgworld.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    const-string v1, "com.lge.lgworld"

    .line 185
    const-string v2, "com.lge.lgworld.LGReceiver"

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "lgworld.receiver"

    const-string v2, "LGSW_INVOKE_CATEGORY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "CATEGORY_ID"

    const-string v2, "116"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v1, "CATEGORY_NAME"

    const-string v2, "Home theme"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    iget-object v1, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 194
    :goto_28
    return-void

    .line 192
    :catch_29
    move-exception v0

    invoke-virtual {p0}, Lcom/lge/launcher3/theme/GridFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Can\'t excute SmartWorld GL!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_28
.end method

.method public startLGSmartWorldJP()V
    .registers 4

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 172
    const-string v1, "com.lge.apps.jp.phone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 173
    const-string v1, "CategoryID"

    const-string v2, "HOMETHEME"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lcom/lge/launcher3/theme/GridFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 179
    :goto_14
    return-void

    .line 177
    :catch_15
    move-exception v0

    invoke-virtual {p0}, Lcom/lge/launcher3/theme/GridFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Can\'t excute SmartWorld JP!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_14
.end method
