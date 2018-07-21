.class public Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;
.super Landroid/preference/LGPreferenceFragment;
.source "HomescreenSettingsFragment.java"


# static fields
.field private static final ADD_PREFERENCES_DELAY:I = 0x1e

.field private static final EXTRA_NEW_VALUE:Ljava/lang/String; = "newValue"

.field private static final EXTRA_PERFORM:Ljava/lang/String; = "perform"

.field private static final EXTRA_SEARCH_ITEM:Ljava/lang/String; = "search_item"

.field public static final LGHOMESETTINGSPREF_REQUEST_FROM_SEARCH:I = 0x3

.field public static final LGHOMESETTINGSPREF_REQUEST_LAUNCHER_SELECT:I = 0x0

.field public static final LGHOMESETTINGSPREF_REQUEST_THEME_SELECT:I = 0x1

.field public static final LGHOMESETTINGSPREF_REQUEST_WALLPAPER_SELECT:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final LIST_IDS_HIDE_APPS:I

.field public final LIST_IDX_DDT_THEME:I

.field public final LIST_IDX_DYNAMIC_GRID:I

.field public final LIST_IDX_GOOGLE_NOW:I

.field public final LIST_IDX_HELP:I

.field public final LIST_IDX_LAUNCHER:I

.field public final LIST_IDX_MAX:I

.field public final LIST_IDX_MIN:I

.field public final LIST_IDX_QMEMOPLUS_PANEL:I

.field public final LIST_IDX_SCREEN_EFFECT:I

.field public final LIST_IDX_SMARTBULLETIN:I

.field public final LIST_IDX_SORTAPPSBY:I

.field public final LIST_IDX_THEME:I

.field public final LIST_IDX_T_WALLPAPER:I

.field public final LIST_IDX_WALLPAPER:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsInitPrefernces:Z

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field private final mPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedDynamicGrid:I

.field private mSelectedLGHome:Z

.field private final mSupportItems:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-class v0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->TAG:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0xd

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Landroid/preference/LGPreferenceFragment;-><init>()V

    .line 71
    iput-boolean v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSelectedLGHome:Z

    .line 73
    iput v1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->LIST_IDX_MIN:I

    .line 74
    iput v1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->LIST_IDX_LAUNCHER:I

    .line 75
    iput v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->LIST_IDX_SMARTBULLETIN:I

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->LIST_IDX_QMEMOPLUS_PANEL:I

    .line 77
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->LIST_IDX_THEME:I

    .line 78
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->LIST_IDX_WALLPAPER:I

    .line 79
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->LIST_IDX_T_WALLPAPER:I

    .line 80
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->LIST_IDX_SCREEN_EFFECT:I

    .line 81
    const/4 v0, 0x7

    iput v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->LIST_IDX_DDT_THEME:I

    .line 82
    const/16 v0, 0x8

    iput v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->LIST_IDX_DYNAMIC_GRID:I

    .line 83
    const/16 v0, 0x9

    iput v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->LIST_IDX_SORTAPPSBY:I

    .line 84
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->LIST_IDX_HELP:I

    .line 85
    const/16 v0, 0xb

    iput v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->LIST_IDS_HIDE_APPS:I

    .line 86
    const/16 v0, 0xc

    iput v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->LIST_IDX_GOOGLE_NOW:I

    .line 87
    iput v2, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->LIST_IDX_MAX:I

    .line 89
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 98
    iput-boolean v1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mIsInitPrefernces:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mPreferenceList:Ljava/util/ArrayList;

    .line 693
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSelectedDynamicGrid:I

    .line 904
    new-instance v0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$1;-><init>(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;)V

    iput-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;Z)V
    .registers 2

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mIsInitPrefernces:Z

    return-void
.end method

.method static synthetic access$1(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;I)V
    .registers 2

    .prologue
    .line 693
    iput p1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSelectedDynamicGrid:I

    return-void
.end method

.method static synthetic access$2(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;)I
    .registers 2

    .prologue
    .line 693
    iget v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSelectedDynamicGrid:I

    return v0
.end method

.method private callHideAppsSettingActivity()V
    .registers 4

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Home_ShowHideApps"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 877
    :try_start_9
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getPackageContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 878
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_17} :catch_18

    .line 882
    :goto_17
    return-void

    .line 879
    :catch_18
    move-exception v0

    .line 880
    sget-object v1, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "ActivityNotFoundException - "

    invoke-static {v1, v2, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_17
.end method

.method private callQMemoplusPanelSetting(Landroid/preference/SwitchPreference;)V
    .registers 5

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 636
    invoke-virtual {p1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->putEnableQmemopluspanel(Landroid/content/Context;Z)V

    .line 637
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.launcher3.intent.action.ENABLE_QMEMOPANEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 639
    return-void
.end method

.method private callQMemoplusPanelSetting(Z)V
    .registers 5

    .prologue
    .line 642
    const-string v0, "homesettingsprefs_key_qmemoplus_panel"

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 643
    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 644
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "homesettingsprefs_key_qmemoplus_panel"

    invoke-static {v1, v2, p1}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateCheckValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 646
    invoke-direct {p0, v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callQMemoplusPanelSetting(Landroid/preference/SwitchPreference;)V

    .line 647
    return-void
.end method

.method private callSelectDDTTheme()V
    .registers 6

    .prologue
    .line 598
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.themesquare.action.VIEW_THEMES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    .line 603
    :goto_a
    return-void

    .line 600
    :catch_b
    move-exception v0

    .line 601
    sget-object v1, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "ActivityNotFoundException(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method private callSelectDynamicGrid()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 695
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 696
    const-string v0, "Home_ShowGrid"

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 697
    new-instance v2, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    invoke-direct {v2, v1}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;-><init>(Landroid/app/Activity;)V

    .line 698
    invoke-virtual {v2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->init()V

    .line 699
    invoke-virtual {v2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->getPresetArray()[Ljava/lang/String;

    move-result-object v0

    .line 700
    new-instance v3, Landroid/widget/ArrayAdapter;

    .line 701
    sget v4, Lcom/lge/R$layout;->dialog_c_6:I

    const v5, 0x1020014

    .line 700
    invoke-direct {v3, v1, v4, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 702
    invoke-virtual {v2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->getSelectedGridIndex()I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSelectedDynamicGrid:I

    .line 703
    invoke-virtual {v2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->getSelectedGridIndex()I

    move-result v4

    .line 705
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 706
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 707
    const v6, 0x7f040010

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 708
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 710
    const v0, 0x7f0e0039

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 711
    const v7, 0x7f0f00da

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 713
    const v0, 0x7f0e003b

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 714
    const v6, 0x7f0f00dd

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 715
    const-string v6, "list_separator_text_color"

    invoke-static {v1, v6}, Lcom/lge/launcher3/util/DDTUtils;->getLGEColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 717
    const/4 v6, 0x0

    const-string v7, "type_c01_sp"

    invoke-static {v1, v7}, Lcom/lge/launcher3/util/DDTUtils;->getLGEDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 718
    const-string v6, "list_separator_background_color"

    invoke-static {v1, v6}, Lcom/lge/launcher3/util/DDTUtils;->getLGEColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 720
    iget v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSelectedDynamicGrid:I

    new-instance v6, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$7;

    invoke-direct {v6, p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$7;-><init>(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;)V

    invoke-virtual {v5, v3, v0, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 726
    const v0, 0x7f0f0028

    new-instance v3, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$8;

    invoke-direct {v3, p0, v4, v2, v1}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$8;-><init>(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;ILcom/lge/launcher3/dynamicgrid/DynamicGridManager;Landroid/app/Activity;)V

    invoke-virtual {v5, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 736
    const v0, 0x7f0f0029

    invoke-virtual {v5, v0, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 737
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 738
    return-void
.end method

.method private callSelectHelp()V
    .registers 6

    .prologue
    .line 766
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.launcher3.intent.action.SHOW_HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    .line 771
    :goto_a
    return-void

    .line 768
    :catch_b
    move-exception v0

    .line 769
    sget-object v1, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "ActivityNotFoundException(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method private callSelectLauncher()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 574
    :try_start_1
    const-string v0, "com.lge.homeselector"

    .line 575
    const-string v0, "com.lge.homeselector.HomeSelector"

    .line 576
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 577
    const-string v1, "com.lge.homeselector"

    const-string v2, "com.lge.homeselector.HomeSelector"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    const/high16 v1, 0x10810000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 580
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 581
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getPackageContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Home_ShowHomeSelector"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_26
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_26} :catch_27

    .line 585
    :goto_26
    return-void

    .line 582
    :catch_27
    move-exception v0

    .line 583
    sget-object v1, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "ActivityNotFoundException(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method

.method private callSelectScreenEffect()V
    .registers 4

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 676
    const-string v1, "Home_ShowEffect"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 678
    invoke-static {v0}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->getSelectedScreenEffect(Landroid/content/Context;)I

    move-result v1

    .line 679
    new-instance v2, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$6;-><init>(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;Landroid/content/Context;I)V

    .line 690
    invoke-static {v0, v2}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectSelectionDialog;->show(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 691
    return-void
.end method

.method private callSelectSortAppsBy()V
    .registers 3

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 743
    const-string v1, "Home_ShowSortAppsBy"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 746
    invoke-static {v0}, Lcom/lge/launcher3/sortappsby/SortAppsByDialog;->showSelectSortTypeDialog(Landroid/content/Context;)V

    .line 762
    return-void
.end method

.method private callSelectTheme()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 589
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getPackageContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 590
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_10
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_10} :catch_11

    .line 594
    :goto_10
    return-void

    .line 591
    :catch_11
    move-exception v0

    .line 592
    sget-object v1, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "ActivityNotFoundException(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method private callSmartBulletinSetting(Landroid/preference/Preference;Z)V
    .registers 8

    .prologue
    .line 620
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_SBSETTING:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getPackageContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 621
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    const/high16 v1, 0x10810000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 624
    if-eqz p2, :cond_20

    .line 625
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 632
    :goto_1f
    return-void

    .line 627
    :cond_20
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_27
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_1f

    .line 629
    :catch_28
    move-exception v0

    .line 630
    sget-object v1, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "ActivityNotFoundException(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method private callTWallpaper()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 660
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0005

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 662
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 663
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_1e} :catch_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_1e} :catch_34

    .line 669
    :goto_1e
    return-void

    .line 664
    :catch_1f
    move-exception v0

    .line 665
    sget-object v1, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "ActivityNotFoundException(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 666
    :catch_34
    move-exception v0

    .line 667
    sget-object v1, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "NotFoundException(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method private getCurrentTheme()Ljava/lang/String;
    .registers 5

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "LGHome2_Theme"

    .line 795
    const/4 v2, 0x5

    .line 794
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 797
    const-string v1, "CurrentTheme"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 798
    if-nez v0, :cond_2b

    .line 799
    invoke-static {}, Lcom/lge/launcher3/util/LGHomeFeature;->getFEATURE_DEFAULT_THEME()[Ljava/lang/String;

    move-result-object v1

    .line 800
    if-eqz v1, :cond_2b

    array-length v2, v1

    if-lez v2, :cond_2b

    .line 801
    const-string v2, "sys.theme"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 802
    if-ltz v2, :cond_2b

    array-length v3, v1

    if-ge v2, v3, :cond_2b

    .line 803
    aget-object v0, v1, v2

    .line 808
    :cond_2b
    if-nez v0, :cond_2f

    .line 809
    const-string v0, "com.lge.launcher2.theme.optimus"

    .line 812
    :cond_2f
    return-object v0
.end method

.method private getSelectedDynamicGrid()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 829
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 831
    sget-object v1, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;->CURRENT_WORKSAPACE_COLUMNS:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;

    .line 830
    invoke-static {v0, v1, v3}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->getSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I

    move-result v1

    .line 833
    sget-object v2, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;->CURRENT_WORKSAPACE_ROWS:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;

    .line 832
    invoke-static {v0, v2, v3}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->getSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I

    move-result v0

    .line 834
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getThemeCurName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getCurrentTheme()Ljava/lang/String;

    move-result-object v1

    .line 775
    const/4 v0, 0x0

    .line 777
    invoke-virtual {p0, v1}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->readThemeInfo(Ljava/lang/String;)Lcom/lge/launcher3/theme/LGThemeInfo;

    move-result-object v2

    .line 778
    if-eqz v2, :cond_11

    iget-object v3, v2, Lcom/lge/launcher3/theme/LGThemeInfo;->mLabel:Ljava/lang/String;

    if-eqz v3, :cond_11

    .line 779
    iget-object v0, v2, Lcom/lge/launcher3/theme/LGThemeInfo;->mLabel:Ljava/lang/String;

    .line 782
    :cond_11
    if-nez v0, :cond_22

    .line 783
    const-string v0, "com.lge.launcher2.theme.optimus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 784
    const v0, 0x7f0f008a

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 790
    :cond_22
    :goto_22
    if-eqz v0, :cond_2a

    :goto_24
    return-object v0

    .line 786
    :cond_25
    invoke-static {v1}, Lcom/lge/launcher3/homesettings/HomeSettingsUtils;->getAppNameFromPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 790
    :cond_2a
    const-string v0, ""

    goto :goto_24
.end method

.method private makeDDTThemePreference()V
    .registers 3

    .prologue
    .line 485
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 486
    const v1, 0x7f0f009b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 487
    const-string v1, "homesettingsprefs_key_ddt_theme"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    return-void
.end method

.method private makeDynamicGridPreference()V
    .registers 3

    .prologue
    .line 515
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_DYNAMIC_GRID:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 516
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_EDITMODE_DYNAMICGRID:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v0

    if-nez v0, :cond_30

    .line 517
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 518
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 519
    const v0, 0x7f0f00da

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 520
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getSelectedDynamicGrid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 521
    const-string v0, "homesettingsprefs_key_dynamic_grid"

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_30
    return-void
.end method

.method private makeGoogleNowSwitchPreference()V
    .registers 5

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 552
    new-instance v1, Landroid/preference/SwitchPreference;

    invoke-direct {v1, v2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 553
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 554
    const v0, 0x7f0f0175

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 555
    const-string v0, "homesettingsprefs_key_google_now"

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    move-object v0, v1

    .line 556
    check-cast v0, Landroid/preference/SwitchPreference;

    .line 557
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->getGoogleNowEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 558
    new-instance v0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$5;

    invoke-direct {v0, p0, v2}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$5;-><init>(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 569
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    return-void
.end method

.method private makeHelpPreference()V
    .registers 3

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 536
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 537
    const v0, 0x7f0f0152

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 538
    const-string v0, "homesettingsprefs_key_help"

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 539
    const-string v0, "com.lge.launcher3.help.HelpFragment"

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    return-void
.end method

.method private makeHideAppsPreference()V
    .registers 3

    .prologue
    .line 544
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 545
    const v1, 0x7f0f0170

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 546
    const-string v1, "homesettingsprefs_key_hide_apps"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    return-void
.end method

.method private makeHomeSelectorPreference()V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 407
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 409
    invoke-static {v1}, Lcom/lge/launcher3/util/PackageUtils;->getDefaultHomeActivityResolveInfo(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 410
    const/4 v0, 0x0

    .line 411
    if-eqz v2, :cond_24

    .line 412
    invoke-static {v2}, Lcom/lge/launcher3/util/PackageUtils;->isResolverActivity(Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 413
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-static {v2}, Lcom/lge/launcher3/homesettings/HomeSettingsUtils;->isLGHome(Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSelectedLGHome:Z

    .line 419
    :cond_24
    :goto_24
    if-nez v0, :cond_28

    .line 420
    const-string v0, ""

    .line 423
    :cond_28
    sget-object v3, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v4, "makeHomeSelectorPreference() : defHomeResolveInfo(%s)"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 424
    aput-object v2, v5, v6

    .line 423
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 427
    const v1, 0x7f0f00d0

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 428
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 429
    const-string v0, "homesettingsprefs_key_select_launcher"

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 430
    invoke-static {v2}, Lcom/lge/launcher3/homesettings/LGMDMUtils;->changeHomeSelectorPreference(Landroid/preference/Preference;)V

    .line 431
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    return-void

    .line 416
    :cond_54
    iput-boolean v5, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSelectedLGHome:Z

    goto :goto_24
.end method

.method private makePreferenceCategory(ILjava/lang/String;)Landroid/preference/Preference;
    .registers 5

    .prologue
    .line 335
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 336
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(I)V

    .line 337
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    return-object v0
.end method

.method private makePreferenceItem()V
    .registers 4

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 345
    const v1, 0x7f0f00cb

    .line 346
    const-string v2, "homesettingsprefs_key_general_category"

    .line 345
    invoke-direct {p0, v1, v2}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->makePreferenceCategory(ILjava/lang/String;)Landroid/preference/Preference;

    .line 348
    invoke-static {v0}, Lcom/lge/launcher3/homesettings/HomeSettingsUtils;->isHomeSelectorExist(Landroid/content/Context;)Z

    move-result v0

    .line 349
    iget-object v1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_24

    if-eqz v0, :cond_24

    .line 350
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->makeHomeSelectorPreference()V

    .line 352
    const v0, 0x7f0f00cc

    .line 353
    const-string v1, "homesettingsprefs_key_style_category"

    .line 352
    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->makePreferenceCategory(ILjava/lang/String;)Landroid/preference/Preference;

    .line 355
    :cond_24
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2e

    .line 356
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->makeWallpaperPreference()V

    .line 358
    :cond_2e
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_38

    .line 359
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->makeTWallpaperPreference()V

    .line 362
    :cond_38
    iget-boolean v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSelectedLGHome:Z

    if-eqz v0, :cond_50

    .line 363
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_46

    .line 364
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->makeScreenEffectPreference()V

    .line 366
    :cond_46
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_50

    .line 367
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->makeThemePreference()V

    .line 371
    :cond_50
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/4 v1, 0x7

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_5a

    .line 372
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->makeDDTThemePreference()V

    .line 375
    :cond_5a
    iget-boolean v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSelectedLGHome:Z

    if-eqz v0, :cond_b9

    .line 376
    const v0, 0x7f0f00cd

    .line 377
    const-string v1, "homesettingsprefs_key_layout_category"

    .line 376
    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->makePreferenceCategory(ILjava/lang/String;)Landroid/preference/Preference;

    .line 379
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/16 v1, 0x9

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_71

    .line 380
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->makeSortAppsByPreference()V

    .line 382
    :cond_71
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_7c

    .line 383
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->makeDynamicGridPreference()V

    .line 385
    :cond_7c
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/16 v1, 0xb

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_87

    .line 386
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->makeHideAppsPreference()V

    .line 388
    :cond_87
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_91

    .line 389
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->makeSBSwitchPreference()V

    .line 391
    :cond_91
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_9b

    .line 392
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->makeQmemoPanelPreference()V

    .line 394
    :cond_9b
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/16 v1, 0xc

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_a6

    .line 395
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->makeGoogleNowSwitchPreference()V

    .line 397
    :cond_a6
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/16 v1, 0xa

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_b9

    .line 398
    const v0, 0x7f0f00ce

    .line 399
    const-string v1, "homesettingsprefs_key_tips_category"

    .line 398
    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->makePreferenceCategory(ILjava/lang/String;)Landroid/preference/Preference;

    .line 400
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->makeHelpPreference()V

    .line 404
    :cond_b9
    return-void
.end method

.method private makeQmemoPanelPreference()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 454
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 455
    new-instance v1, Lcom/lge/launcher3/homesettings/QMemoSwitchPreference;

    invoke-direct {v1, v3}, Lcom/lge/launcher3/homesettings/QMemoSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 456
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 457
    const v0, 0x7f0f00d1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 458
    const v0, 0x7f0f00d2

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 459
    const-string v0, "homesettingsprefs_key_qmemoplus_panel"

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    move-object v0, v1

    .line 460
    check-cast v0, Landroid/preference/SwitchPreference;

    .line 461
    invoke-static {v3}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->getEnableQmemopluspanel(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 463
    iget-boolean v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSelectedLGHome:Z

    if-eqz v0, :cond_44

    invoke-static {v3}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->isEnabledQmemoPanel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    :goto_33
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 464
    new-instance v0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$4;-><init>(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 472
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    return-void

    :cond_44
    move v0, v2

    .line 463
    goto :goto_33
.end method

.method private makeSBSwitchPreference()V
    .registers 4

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 436
    new-instance v1, Lcom/lge/launcher3/homesettings/SBSwitchPreference;

    invoke-direct {v1, v0}, Lcom/lge/launcher3/homesettings/SBSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 437
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 438
    const v0, 0x7f0f0075

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 439
    const v0, 0x7f0f0076

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 440
    const-string v0, "homesettingsprefs_key_smartbulletin"

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    move-object v0, v1

    .line 441
    check-cast v0, Landroid/preference/SwitchPreference;

    .line 442
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getPackageContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->existSmartBulletinItemInDataBase(Landroid/content/Context;)Z

    move-result v2

    .line 441
    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 443
    new-instance v0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$3;-><init>(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 450
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    return-void
.end method

.method private makeScreenEffectPreference()V
    .registers 4

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 507
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 508
    const v2, 0x7f0f00fb

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 509
    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->getSelectedScreenEffectText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 510
    const-string v0, "homesettingsprefs_key_screeneffect"

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    return-void
.end method

.method private makeSortAppsByPreference()V
    .registers 3

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 528
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 529
    const v0, 0x7f0f0144

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 530
    const-string v0, "homesettingsprefs_key_sort_apps_by"

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    return-void
.end method

.method private makeTWallpaperPreference()V
    .registers 3

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 499
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 500
    const v0, 0x7f0f00d6

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 501
    const-string v0, "homesettingsprefs_key_t_wallpaper"

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    return-void
.end method

.method private makeThemePreference()V
    .registers 3

    .prologue
    .line 476
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 477
    const v1, 0x7f0f009b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 478
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getThemeCurName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 479
    const-string v1, "homesettingsprefs_key_theme"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 480
    iget-boolean v1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSelectedLGHome:Z

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 481
    iget-object v1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    return-void
.end method

.method private makeWallpaperPreference()V
    .registers 3

    .prologue
    .line 491
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 492
    const v1, 0x7f0f00d4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 493
    const-string v1, "homesettingsprefs_key_wallpaper"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 494
    iget-object v1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    return-void
.end method

.method private onCreateFromSettingsSearch(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 838
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 839
    const-string v1, "perform"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 840
    const-string v2, "newValue"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 842
    const-string v0, "homesettingsprefs_key_select_launcher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 843
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSelectLauncher()V

    .line 872
    :goto_20
    return-void

    .line 844
    :cond_21
    const-string v0, "homesettingsprefs_key_wallpaper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 845
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSelectWallpaper()V

    goto :goto_20

    .line 846
    :cond_2d
    const-string v0, "homesettingsprefs_key_theme"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 847
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSelectTheme()V

    goto :goto_20

    .line 848
    :cond_39
    const-string v0, "homesettingsprefs_key_ddt_theme"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 849
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSelectDDTTheme()V

    goto :goto_20

    .line 850
    :cond_45
    const-string v0, "homesettingsprefs_key_smartbulletin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-boolean v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSelectedLGHome:Z

    if-eqz v0, :cond_64

    .line 851
    const-string v0, "homesettingsprefs_key_smartbulletin"

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/homesettings/SBSwitchPreference;

    .line 852
    if-eqz v1, :cond_5f

    .line 853
    invoke-direct {p0, v2}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->switchSmartBulletinSetting(Z)V

    goto :goto_20

    .line 855
    :cond_5f
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSmartBulletinSetting(Landroid/preference/Preference;Z)V

    goto :goto_20

    .line 857
    :cond_64
    const-string v0, "homesettingsprefs_key_qmemoplus_panel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    if-eqz v1, :cond_76

    iget-boolean v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSelectedLGHome:Z

    if-eqz v0, :cond_76

    .line 858
    invoke-direct {p0, v2}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callQMemoplusPanelSetting(Z)V

    goto :goto_20

    .line 859
    :cond_76
    const-string v0, "homesettingsprefs_key_screeneffect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    iget-boolean v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSelectedLGHome:Z

    if-eqz v0, :cond_86

    .line 860
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSelectScreenEffect()V

    goto :goto_20

    .line 861
    :cond_86
    const-string v0, "homesettingsprefs_key_dynamic_grid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    iget-boolean v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSelectedLGHome:Z

    if-eqz v0, :cond_96

    .line 862
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSelectDynamicGrid()V

    goto :goto_20

    .line 863
    :cond_96
    const-string v0, "homesettingsprefs_key_sort_apps_by"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-boolean v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSelectedLGHome:Z

    if-eqz v0, :cond_a7

    .line 864
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSelectSortAppsBy()V

    goto/16 :goto_20

    .line 865
    :cond_a7
    const-string v0, "homesettingsprefs_key_help"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    iget-boolean v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSelectedLGHome:Z

    if-eqz v0, :cond_b8

    .line 866
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSelectHelp()V

    goto/16 :goto_20

    .line 867
    :cond_b8
    const-string v0, "homesettingsprefs_key_hide_apps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSelectedLGHome:Z

    and-int/2addr v0, v1

    if-eqz v0, :cond_c8

    .line 868
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callHideAppsSettingActivity()V

    goto/16 :goto_20

    .line 869
    :cond_c8
    const-string v0, "homesettingsprefs_key_google_now"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_20
.end method

.method private preferenceTreeClickInGeneralCategory(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 248
    const-string v0, "homesettingsprefs_key_select_launcher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 249
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSelectLauncher()V

    .line 253
    const/4 v0, 0x1

    :goto_c
    return v0

    .line 251
    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private preferenceTreeClickInLayoutCategory(Ljava/lang/String;Landroid/preference/Preference;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 274
    const-string v1, "homesettingsprefs_key_sort_apps_by"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 275
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSelectSortAppsBy()V

    .line 287
    :goto_c
    const/4 v0, 0x1

    :cond_d
    return v0

    .line 276
    :cond_e
    const-string v1, "homesettingsprefs_key_dynamic_grid"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 277
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSelectDynamicGrid()V

    goto :goto_c

    .line 278
    :cond_1a
    const-string v1, "homesettingsprefs_key_smartbulletin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 279
    invoke-direct {p0, p2, v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSmartBulletinSetting(Landroid/preference/Preference;Z)V

    goto :goto_c

    .line 280
    :cond_26
    const-string v1, "homesettingsprefs_key_qmemoplus_panel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 281
    check-cast p2, Landroid/preference/SwitchPreference;

    invoke-direct {p0, p2}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callQMemoplusPanelSetting(Landroid/preference/SwitchPreference;)V

    goto :goto_c

    .line 282
    :cond_34
    const-string v1, "homesettingsprefs_key_hide_apps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 283
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callHideAppsSettingActivity()V

    goto :goto_c
.end method

.method private preferenceTreeClickInStyleCategory(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 257
    const-string v0, "homesettingsprefs_key_wallpaper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 258
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSelectWallpaper()V

    .line 270
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0

    .line 259
    :cond_d
    const-string v0, "homesettingsprefs_key_t_wallpaper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 260
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callTWallpaper()V

    goto :goto_b

    .line 261
    :cond_19
    const-string v0, "homesettingsprefs_key_screeneffect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 262
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSelectScreenEffect()V

    goto :goto_b

    .line 263
    :cond_25
    const-string v0, "homesettingsprefs_key_theme"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 264
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSelectTheme()V

    goto :goto_b

    .line 265
    :cond_31
    const-string v0, "homesettingsprefs_key_ddt_theme"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 266
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSelectDDTTheme()V

    goto :goto_b

    .line 268
    :cond_3d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private preferenceTreeClickInTipsCategory(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 291
    const-string v2, "homesettingsprefs_key_help"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 292
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_30

    .line 293
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_30

    move v2, v0

    .line 294
    :goto_2d
    if-eqz v2, :cond_32

    .line 302
    :cond_2f
    :goto_2f
    return v0

    :cond_30
    move v2, v1

    .line 292
    goto :goto_2d

    .line 297
    :cond_32
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSelectHelp()V

    move v0, v1

    .line 302
    goto :goto_2f
.end method

.method private switchSmartBulletinSetting(Z)V
    .registers 4

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 607
    if-eqz p1, :cond_18

    .line 608
    invoke-static {v1}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->turnOnSmartBulletin(Landroid/content/Context;)Z

    .line 612
    :goto_9
    const-string v0, "homesettingsprefs_key_smartbulletin"

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 613
    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 615
    invoke-static {v1, p1}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateSmartBulletinOnOff(Landroid/content/Context;Z)V

    .line 616
    return-void

    .line 610
    :cond_18
    invoke-static {v1}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->turnOffSmartBulletin(Landroid/content/Context;)Z

    goto :goto_9
.end method


# virtual methods
.method public callSelectWallpaper()V
    .registers 6

    .prologue
    .line 651
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_WALLPAPER_LIST_ACTIVITY:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_12} :catch_13

    .line 656
    :goto_12
    return-void

    .line 653
    :catch_13
    move-exception v0

    .line 654
    sget-object v1, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "ActivityNotFoundException(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .prologue
    .line 886
    packed-switch p1, :pswitch_data_20

    .line 901
    :cond_3
    :goto_3
    return-void

    .line 888
    :pswitch_4
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 889
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f00d5

    .line 890
    const/4 v2, 0x0

    .line 889
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 890
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 895
    :pswitch_17
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 886
    nop

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_4
        :pswitch_17
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 152
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 153
    sget v0, Lcom/lge/internal/R$style;->Theme_LGE_White:I

    invoke-virtual {v4, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 155
    new-instance v3, Lcom/lge/launcher3/homesettings/HomeSettingContext;

    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getPackageContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/lge/launcher3/homesettings/HomeSettingContext;-><init>(Landroid/content/Context;)V

    .line 156
    const/4 v0, 0x0

    .line 158
    :try_start_15
    const-string v5, "com.lge.launcher3"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/lge/launcher3/homesettings/HomeSettingContext;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_1b} :catch_106

    move-result-object v0

    .line 163
    :goto_1c
    invoke-static {v0}, Lcom/lge/launcher3/util/LGHomeFeature;->init(Ljava/lang/Object;)V

    .line 165
    invoke-super {p0, p1}, Landroid/preference/LGPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 167
    const v3, 0x7f040023

    invoke-virtual {p0, v3}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->addPreferencesFromResource(I)V

    .line 168
    invoke-virtual {p0, v1}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->setHasOptionsMenu(Z)V

    .line 170
    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    .line 171
    if-eqz v3, :cond_38

    instance-of v5, v4, Lcom/lge/launcher3/homesettings/HomeSettingsPrefActivity;

    if-eqz v5, :cond_38

    .line 172
    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 176
    :cond_38
    iget-object v3, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$2;

    invoke-direct {v5, p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$2;-><init>(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;)V

    .line 182
    const-wide/16 v6, 0x1e

    .line 176
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    iget-object v3, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    aput-boolean v1, v3, v2

    .line 185
    iget-object v3, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    sget-object v5, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_SMARTBULLETIN:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 186
    invoke-virtual {v5}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v5

    .line 185
    aput-boolean v5, v3, v1

    .line 187
    iget-object v3, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/4 v5, 0x2

    sget-object v6, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_QMEMOPLUS_PANEL:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 188
    invoke-virtual {v6}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v6

    .line 187
    aput-boolean v6, v3, v5

    .line 189
    iget-object v3, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/4 v5, 0x3

    invoke-static {}, Lcom/lge/launcher3/util/LGHomeFeature;->getInstance()Lcom/lge/launcher3/util/LGHomeFeature;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/launcher3/util/LGHomeFeature;->useTheme()Z

    move-result v6

    aput-boolean v6, v3, v5

    .line 190
    iget-object v3, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/4 v5, 0x4

    aput-boolean v1, v3, v5

    .line 191
    iget-object v3, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/4 v5, 0x5

    sget-object v6, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    const-string v7, "SKT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_120

    .line 193
    const v6, 0x7f0f0004

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 192
    invoke-static {v0, v6}, Lcom/lge/launcher3/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 193
    if-eqz v0, :cond_120

    move v0, v1

    .line 191
    :goto_8a
    aput-boolean v0, v3, v5

    .line 194
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/4 v3, 0x6

    aput-boolean v1, v0, v3

    .line 195
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/4 v3, 0x7

    sget-object v5, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_SETTING_DDT_THEME:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 196
    invoke-virtual {v5}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v5

    .line 195
    aput-boolean v5, v0, v3

    .line 197
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/16 v3, 0x8

    sget-object v5, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_DYNAMIC_GRID:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v5}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v5

    aput-boolean v5, v0, v3

    .line 198
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/16 v3, 0x9

    aput-boolean v1, v0, v3

    .line 199
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/16 v3, 0xb

    aput-boolean v1, v0, v3

    .line 200
    iget-object v3, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/16 v5, 0xa

    sget-object v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    const-string v6, "VZW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_123

    sget-object v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    const-string v6, "ATT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_123

    move v0, v2

    :goto_cd
    aput-boolean v0, v3, v5

    .line 201
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSupportItems:[Z

    const/16 v3, 0xc

    sget-object v5, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_GOOGLE_NOW:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 202
    invoke-virtual {v5}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v5

    .line 201
    aput-boolean v5, v0, v3

    .line 204
    instance-of v0, v4, Lcom/lge/launcher3/homesettings/HomeSettingsPrefActivity;

    if-eqz v0, :cond_ed

    .line 205
    iput-boolean v1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mIsInitPrefernces:Z

    .line 206
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->refreshPrefInfo()V

    .line 207
    iput-boolean v2, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mIsInitPrefernces:Z

    .line 208
    sget-object v0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "When onCreate, refreshPrefInfo is called directly"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_ed
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "search_item"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_fc

    .line 213
    invoke-direct {p0, v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->onCreateFromSettingsSearch(Ljava/lang/String;)V

    .line 216
    :cond_fc
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/lge/launcher3/homesettings/LGMDMUtils;->registerLGMDMFilter(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 217
    return-void

    .line 159
    :catch_106
    move-exception v3

    .line 160
    sget-object v5, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "homesettingContext.createPackageContext :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1c

    :cond_120
    move v0, v2

    .line 191
    goto/16 :goto_8a

    :cond_123
    move v0, v1

    .line 200
    goto :goto_cd
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 228
    invoke-super {p0}, Landroid/preference/LGPreferenceFragment;->onDestroy()V

    .line 229
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/lge/launcher3/homesettings/LGMDMUtils;->unregisterLGMDMFilter(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 230
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    .prologue
    .line 109
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_8c

    .line 147
    :goto_7
    invoke-super {p0, p1}, Landroid/preference/LGPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 111
    :pswitch_c
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "startedBy"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    const-string v2, "LGHome"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 115
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.settings.SETTINGS"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    const-string v0, "android.intent.extra.TEXT"

    const-string v3, "display"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/high16 v0, 0x10200000

    .line 117
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    sget-object v0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.android.settings: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :try_start_49
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_49 .. :try_end_4c} :catch_50

    .line 140
    :goto_4c
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_7

    .line 125
    :catch_50
    move-exception v0

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 126
    if-nez v0, :cond_65

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_65

    .line 127
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_65
    invoke-static {}, Lcom/lge/mdm/LGMDMManagerInternal;->getInstance()Lcom/lge/mdm/LGMDMManagerInternal;

    move-result-object v2

    .line 130
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 131
    const/4 v4, 0x0

    .line 129
    invoke-virtual {v2, v3, v0, v4}, Lcom/lge/mdm/LGMDMManagerInternal;->checkStartActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7f

    .line 132
    const v0, 0x7f0f001e

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 135
    :cond_7f
    sget-object v0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "activity is ActivityNotFoundException"

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 138
    :cond_87
    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_4c

    .line 109
    nop

    :pswitch_data_8c
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5

    .prologue
    .line 234
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-direct {p0, v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->preferenceTreeClickInGeneralCategory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 237
    invoke-direct {p0, v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->preferenceTreeClickInStyleCategory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 238
    invoke-direct {p0, v0, p2}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->preferenceTreeClickInLayoutCategory(Ljava/lang/String;Landroid/preference/Preference;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 239
    invoke-direct {p0, v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->preferenceTreeClickInTipsCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 240
    :cond_1c
    const/4 v0, 0x1

    .line 244
    :goto_1d
    return v0

    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/preference/LGPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1d
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 221
    invoke-super {p0}, Landroid/preference/LGPreferenceFragment;->onResume()V

    .line 223
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->refreshPrefInfo()V

    .line 224
    return-void
.end method

.method public readThemeInfo(Ljava/lang/String;)Lcom/lge/launcher3/theme/LGThemeInfo;
    .registers 4

    .prologue
    .line 816
    if-nez p1, :cond_4

    .line 817
    const/4 v0, 0x0

    .line 825
    :cond_3
    :goto_3
    return-object v0

    .line 820
    :cond_4
    new-instance v0, Lcom/lge/launcher3/theme/LGThemeInfo;

    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/lge/launcher3/theme/LGThemeInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 821
    iget-object v1, v0, Lcom/lge/launcher3/theme/LGThemeInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_3

    .line 822
    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->readThemeXML()V

    goto :goto_3
.end method

.method public refreshPrefInfo()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 306
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mIsInitPrefernces:Z

    if-nez v0, :cond_13

    .line 307
    :cond_b
    sget-object v0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "refreshPrefInfo() activity is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_12
    :goto_12
    return-void

    .line 311
    :cond_13
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_21

    .line 313
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 314
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 317
    :cond_21
    const v0, 0x7f040023

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->addPreferencesFromResource(I)V

    .line 319
    invoke-direct {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->makePreferenceItem()V

    .line 320
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mSelectedLGHome:Z

    invoke-static {v0, v2, v1}, Lcom/lge/launcher3/homesettings/SettingsSearchUtils;->updateSettingSearchDB(Landroid/content/Context;ZZ)V

    .line 322
    invoke-virtual {p0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 323
    if-nez v1, :cond_43

    .line 324
    sget-object v0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "root is null"

    new-array v2, v2, [I

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_12

    .line 328
    :cond_43
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->mPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 329
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_49
.end method
