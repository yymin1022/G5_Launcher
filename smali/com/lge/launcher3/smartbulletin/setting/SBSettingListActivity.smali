.class public Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;
.super Landroid/app/Activity;
.source "SBSettingListActivity.java"


# static fields
.field private static final DIALOG_SHOWING:Ljava/lang/String; = "dialog_showing"

.field private static final EXTRA_NEW_VALUE:Ljava/lang/String; = "newValue"

.field private static final EXTRA_PERFORM:Ljava/lang/String; = "perform"

.field private static final EXTRA_SEARCH_ITEM:Ljava/lang/String; = "search_item"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentDialog:Landroid/app/Dialog;

.field private mCurrentMenu:Landroid/view/Menu;

.field private mDragSortListView:Lcom/mobeta/android/dslv/DragSortListView;

.field private mListAdapter:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

.field private mSwitch:Landroid/widget/Switch;

.field private mWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mDragSortListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 47
    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mListAdapter:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

    .line 48
    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    .line 49
    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mSwitch:Landroid/widget/Switch;

    .line 50
    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mCurrentDialog:Landroid/app/Dialog;

    .line 51
    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mCurrentMenu:Landroid/view/Menu;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;)Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mListAdapter:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;)Landroid/widget/Switch;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;Z)V
    .registers 2

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->setButtonEnable(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;Landroid/content/Context;Z)V
    .registers 3

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->enableSmartBulletinInSBSetting(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;)V
    .registers 1

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->dismissDialog()V

    return-void
.end method

.method static synthetic access$5(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;Landroid/widget/CompoundButton;)Landroid/app/Dialog;
    .registers 3

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->createSBRemoveDialog(Landroid/widget/CompoundButton;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;Landroid/app/Dialog;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mCurrentDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$7(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mCurrentDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private createSBRemoveDialog(Landroid/widget/CompoundButton;)Landroid/app/Dialog;
    .registers 6

    .prologue
    .line 290
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 291
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 293
    const v0, 0x7f040041

    .line 294
    const/4 v2, 0x0

    .line 293
    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 295
    const v2, 0x7f0f007d

    invoke-virtual {p0, v2}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 296
    const v3, 0x7f0f007e

    invoke-virtual {p0, v3}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 297
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 299
    new-instance v0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$3;-><init>(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;Landroid/widget/CompoundButton;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 310
    new-instance v0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$4;-><init>(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;Landroid/widget/CompoundButton;)V

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 318
    new-instance v0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$5;-><init>(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;Landroid/widget/CompoundButton;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 326
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private dismissDialog()V
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 331
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mCurrentDialog:Landroid/app/Dialog;

    .line 334
    :cond_c
    return-void
.end method

.method private enableSmartBulletinInSBSetting(Landroid/content/Context;Z)V
    .registers 3

    .prologue
    .line 368
    if-eqz p2, :cond_6

    .line 369
    invoke-static {p1}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->turnOnSmartBulletin(Landroid/content/Context;)Z

    .line 373
    :goto_5
    return-void

    .line 371
    :cond_6
    invoke-static {p1}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->turnOffSmartBulletin(Landroid/content/Context;)Z

    goto :goto_5
.end method

.method private getEnabledItemNum()I
    .registers 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mListAdapter:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->getEnabledItemNum(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private initSwitch(Landroid/widget/Switch;)V
    .registers 3

    .prologue
    .line 168
    if-nez p1, :cond_3

    .line 200
    :goto_2
    return-void

    .line 172
    :cond_3
    new-instance v0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$2;-><init>(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 197
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->existSmartBulletinItemInDataBase(Landroid/content/Context;)Z

    move-result v0

    .line 198
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 199
    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->setButtonEnable(Z)V

    goto :goto_2
.end method

.method private isAvailablePackage(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 203
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 206
    const/4 v2, 0x1

    :try_start_6
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_a

    .line 211
    :goto_9
    return v0

    .line 209
    :catch_a
    move-exception v0

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private setButtonEnable(Z)V
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mListAdapter:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

    if-eqz v0, :cond_9

    .line 217
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mListAdapter:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->setEnabled(Z)V

    .line 219
    :cond_9
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mDragSortListView:Lcom/mobeta/android/dslv/DragSortListView;

    if-eqz v0, :cond_12

    .line 220
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mDragSortListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragEnabled(Z)V

    .line 223
    :cond_12
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mCurrentMenu:Landroid/view/Menu;

    if-nez v0, :cond_17

    .line 228
    :goto_16
    return-void

    .line 227
    :cond_17
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->setDownloadableButtonEnable(Z)V

    goto :goto_16
.end method

.method private setDownloadableButtonEnable(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 232
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mCurrentMenu:Landroid/view/Menu;

    const v1, 0x7f0e0107

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 234
    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_SMARTBULLETIN_DOWNLOADABLE_PROVIDER:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 235
    const-string v1, "com.lge.lgworld"

    invoke-direct {p0, v1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->isAvailablePackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 236
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 237
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 238
    if-eqz p1, :cond_36

    .line 239
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 243
    :goto_2c
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_35

    .line 244
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 254
    :cond_35
    :goto_35
    return-void

    .line 241
    :cond_36
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2c

    .line 247
    :cond_40
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 248
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 249
    const v1, 0x7f0900e8

    .line 248
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 250
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_35

    .line 251
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2, v2, v0, v2}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    goto :goto_35
.end method

.method private switchFromSettingsSearch()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 355
    const-string v1, "search_item"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    if-eqz v1, :cond_2c

    .line 357
    const-string v1, "perform"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 358
    const-string v2, "newValue"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 359
    if-eqz v1, :cond_2c

    .line 360
    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->setButtonEnable(Z)V

    .line 361
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->enableSmartBulletinInSBSetting(Landroid/content/Context;Z)V

    .line 362
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateSmartBulletinOnOff(Landroid/content/Context;Z)V

    .line 365
    :cond_2c
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 258
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 259
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    if-eqz v0, :cond_c

    .line 260
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->onActivityResult(Landroid/content/Context;IILandroid/content/Intent;)V

    .line 262
    :cond_c
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->setResult(ILandroid/content/Intent;)V

    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 148
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 55
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$2$1d5b537b(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    if-nez v0, :cond_16

    .line 56
    invoke-static {p0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    .line 57
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mWidgetHelper:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->updatedSmartBulletinProvider(Landroid/content/Context;)V

    .line 59
    :cond_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_27

    .line 60
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_27

    .line 62
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 67
    :cond_27
    const v0, 0x7f040042

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->setContentView(I)V

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f0e00dc

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mDragSortListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 72
    new-instance v0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mListAdapter:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

    .line 73
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mDragSortListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mListAdapter:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mDragSortListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mListAdapter:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 76
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mDragSortListView:Lcom/mobeta/android/dslv/DragSortListView;

    new-instance v1, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$1;-><init>(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;)V

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->switchFromSettingsSearch()V

    .line 153
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mCurrentMenu:Landroid/view/Menu;

    .line 154
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 155
    const v1, 0x7f110001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 156
    const v0, 0x7f0e0106

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mSwitch:Landroid/widget/Switch;

    .line 157
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_27

    .line 158
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->initSwitch(Landroid/widget/Switch;)V

    .line 160
    :cond_27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 140
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mListAdapter:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->onDestroy(Landroid/content/Context;)V

    .line 141
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    .prologue
    .line 266
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_50

    .line 286
    :goto_7
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 268
    :sswitch_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.lgworld.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    const-string v1, "com.lge.lgworld"

    const-string v2, "com.lge.lgworld.LGReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v1, "lgworld.receiver"

    const-string v2, "LGSW_INVOKE_COLLECTION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 273
    const v2, 0x7f0f0017

    .line 272
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 274
    const-string v2, "URL"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/mobile/APIs/LGWC/Business/getThemeList?idx=1&code="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v1, "TITLE"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 279
    const/4 v0, 0x1

    goto :goto_b

    .line 281
    :sswitch_4c
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->startHomeSettingActivity()V

    goto :goto_7

    .line 266
    :sswitch_data_50
    .sparse-switch
        0x102002c -> :sswitch_4c
        0x7f0e0107 -> :sswitch_c
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->existSmartBulletinItemInDataBase(Landroid/content/Context;)Z

    move-result v0

    .line 131
    if-eqz v0, :cond_f

    .line 132
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mListAdapter:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->updateData(Landroid/content/Context;)V

    .line 134
    :cond_f
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 135
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 98
    if-eqz p1, :cond_23

    .line 99
    const-string v0, "dialog_showing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 100
    if-eqz v0, :cond_24

    .line 101
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 102
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->dismissDialog()V

    .line 103
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->createSBRemoveDialog(Landroid/widget/CompoundButton;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mCurrentDialog:Landroid/app/Dialog;

    .line 104
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 110
    :cond_23
    :goto_23
    return-void

    .line 106
    :cond_24
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->existSmartBulletinItemInDataBase(Landroid/content/Context;)Z

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_23
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 114
    invoke-static {}, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->getState()Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    move-result-object v0

    sget-object v1, Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;->COLLAPSE:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    if-ne v0, v1, :cond_19

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.launcher3.smartbulletin.request.expand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    :cond_19
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 126
    :cond_25
    :goto_25
    return-void

    .line 121
    :cond_26
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->dismissDialog()V

    .line 122
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_25

    .line 123
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->initSwitch(Landroid/widget/Switch;)V

    goto :goto_25
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 88
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 90
    const/4 v0, 0x1

    .line 92
    :cond_11
    const-string v1, "dialog_showing"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    return-void
.end method

.method public startHomeSettingActivity()V
    .registers 4

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "startedBy"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    const-string v1, "SmartBulletin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 340
    :try_start_12
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_SETTING:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 342
    const-string v1, "startedBy"

    const-string v2, "LGHome"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_30} :catch_34

    .line 350
    :goto_30
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->finish()V

    .line 351
    return-void

    .line 344
    :catch_34
    move-exception v0

    .line 345
    sget-object v1, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->TAG:Ljava/lang/String;

    const-string v2, "ActivityNotFoundException : "

    invoke-static {v1, v2, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_30

    .line 348
    :cond_3d
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->onBackPressed()V

    goto :goto_30
.end method
