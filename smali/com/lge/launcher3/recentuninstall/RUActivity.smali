.class public Lcom/lge/launcher3/recentuninstall/RUActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RUActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$recentuninstall$RUActivity$RECENT_UNINSTALL_MODE:[I = null

.field public static final MENU_RECENT_UNINSTALL_SELECT:I = 0x0

.field public static final MENU_RECENT_UNINSTALL_SELECT_DONE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionBarSelect:Landroid/view/MenuItem;

.field mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/lge/launcher3/recentuninstall/RUAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;

.field mDeleteAdapter:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

.field mEmptyTextView:Landroid/widget/TextView;

.field mListview:Landroid/widget/ListView;

.field mRecentUninstallAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/recentuninstall/RUAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mReinstallAdapter:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;

.field private mUninstallAppBtnCancel:Landroid/widget/Button;

.field private mUninstallAppBtnOK:Landroid/widget/Button;

.field private mUninstallAppCount:Landroid/widget/TextView;

.field private mUninstallAppCountFormat:Ljava/lang/String;

.field private mUninstallAppItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mUninstallAppSelectAll:Landroid/widget/CheckBox;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$recentuninstall$RUActivity$RECENT_UNINSTALL_MODE()[I
    .registers 3

    .prologue
    .line 41
    sget-object v0, Lcom/lge/launcher3/recentuninstall/RUActivity;->$SWITCH_TABLE$com$lge$launcher3$recentuninstall$RUActivity$RECENT_UNINSTALL_MODE:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;->values()[Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;->NORMAL:Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;

    invoke-virtual {v1}, Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;->SELECT_ALL:Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;

    invoke-virtual {v1}, Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21

    :goto_1e
    sput-object v0, Lcom/lge/launcher3/recentuninstall/RUActivity;->$SWITCH_TABLE$com$lge$launcher3$recentuninstall$RUActivity$RECENT_UNINSTALL_MODE:[I

    goto :goto_4

    :catch_21
    move-exception v1

    goto :goto_1e

    :catch_23
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/lge/launcher3/recentuninstall/RUActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/recentuninstall/RUActivity;->TAG:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 48
    sget-object v0, Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;->NORMAL:Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mCurState:Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;

    .line 194
    new-instance v0, Lcom/lge/launcher3/recentuninstall/RUActivity$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/recentuninstall/RUActivity$1;-><init>(Lcom/lge/launcher3/recentuninstall/RUActivity;)V

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 41
    return-void
.end method

.method static synthetic access$2(Lcom/lge/launcher3/recentuninstall/RUActivity;)Landroid/widget/CheckBox;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppSelectAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/launcher3/recentuninstall/RUActivity;)V
    .registers 1

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->updateUninstallAppCount()V

    return-void
.end method

.method static synthetic access$5(Lcom/lge/launcher3/recentuninstall/RUActivity;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mActionBarSelect:Landroid/view/MenuItem;

    return-object v0
.end method

.method private initUninstallAppCount()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 218
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppCount:Landroid/widget/TextView;

    .line 219
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppCountFormat:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppBtnOK:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 221
    return-void
.end method

.method private refreshList()V
    .registers 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 99
    new-array v0, v2, [Ljava/lang/String;

    .line 100
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 102
    :try_start_9
    invoke-static {}, Lcom/lge/content/pm/PackageManagerEx;->getDefault()Lcom/lge/content/pm/PackageManagerEx;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/lge/content/pm/PackageManagerEx;->getDisabledByLGLauncherPackageList(I)[Ljava/lang/String;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_70
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_14} :catch_75

    move-result-object v0

    .line 109
    :goto_15
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mRecentUninstallAppsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 111
    invoke-static {p0}, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/recentuninstall/RUProgressListManager;

    move-result-object v4

    .line 113
    invoke-virtual {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 114
    array-length v6, v0

    move v3, v2

    :goto_24
    if-lt v3, v6, :cond_7e

    .line 128
    iget-object v3, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mEmptyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_a7

    move v1, v2

    :goto_31
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    sget-object v1, Lcom/lge/launcher3/recentuninstall/RUActivity;->TAG:Ljava/lang/String;

    const-string v3, "refreshList() : packageNameList(%d %s)"

    new-array v5, v11, [Ljava/lang/Object;

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 131
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    .line 130
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/lge/launcher3/recentuninstall/RUActivity;->TAG:Ljava/lang/String;

    const-string v1, "refreshList() : packageNameList(%d %s)"

    new-array v3, v11, [Ljava/lang/Object;

    .line 133
    invoke-virtual {v4}, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->getList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v4}, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->getList()Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v3, v10

    .line 132
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void

    .line 103
    :catch_70
    move-exception v1

    .line 104
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_15

    .line 106
    :catch_75
    move-exception v1

    sget-object v1, Lcom/lge/launcher3/recentuninstall/RUActivity;->TAG:Ljava/lang/String;

    const-string v3, "Not implement PackageManagerEX in framework"

    invoke-static {v1, v3}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 114
    :cond_7e
    aget-object v1, v0, v3

    .line 115
    invoke-virtual {v4, v1}, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 114
    :goto_86
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_24

    .line 120
    :cond_8a
    const/4 v7, 0x0

    :try_start_8b
    invoke-virtual {v5, v1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 121
    new-instance v8, Lcom/lge/launcher3/recentuninstall/RUAppInfo;

    invoke-virtual {v7, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v8, v9, v7, v1}, Lcom/lge/launcher3/recentuninstall/RUAppInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
    :try_end_a1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8b .. :try_end_a1} :catch_a2

    goto :goto_86

    .line 123
    :catch_a2
    move-exception v1

    .line 124
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_86

    .line 128
    :cond_a7
    const/16 v1, 0x8

    goto :goto_31
.end method

.method private updateUninstallAppCount()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    instance-of v0, v0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    if-eqz v0, :cond_2f

    .line 225
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    check-cast v0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mDeleteAdapter:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    .line 226
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mDeleteAdapter:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->getSelectedCount()I

    move-result v0

    .line 227
    iget-object v3, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppCount:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppCountFormat:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v3, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppBtnOK:Landroid/widget/Button;

    if-lez v0, :cond_30

    move v0, v1

    :goto_2c
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 230
    :cond_2f
    return-void

    :cond_30
    move v0, v2

    .line 228
    goto :goto_2c
.end method


# virtual methods
.method public initLayoutComponent()V
    .registers 5

    .prologue
    const v3, 0x7f0e00bf

    const/4 v2, 0x0

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mRecentUninstallAppsList:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f016a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppCountFormat:Ljava/lang/String;

    .line 140
    invoke-static {}, Lcom/lge/launcher3/recentuninstall/RUActivity;->$SWITCH_TABLE$com$lge$launcher3$recentuninstall$RUActivity$RECENT_UNINSTALL_MODE()[I

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mCurState:Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;

    invoke-virtual {v1}, Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_ba

    .line 169
    :goto_27
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    return-void

    .line 142
    :pswitch_2f
    const v0, 0x7f040039

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->setContentView(I)V

    .line 143
    invoke-virtual {p0, v3}, Lcom/lge/launcher3/recentuninstall/RUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mListview:Landroid/widget/ListView;

    .line 144
    const v0, 0x7f0e00c2

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 145
    const-string v1, "list_separator_text_color"

    invoke-static {p0, v1}, Lcom/lge/launcher3/util/DDTUtils;->getLGEColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    const-string v1, "type_c01_sp"

    invoke-static {p0, v1}, Lcom/lge/launcher3/util/DDTUtils;->getLGEDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 147
    const-string v1, "list_separator_background_color"

    invoke-static {p0, v1}, Lcom/lge/launcher3/util/DDTUtils;->getLGEColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 148
    const v0, 0x7f0e00c3

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mEmptyTextView:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mListview:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 150
    new-instance v0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;

    const v1, 0x7f040036

    .line 151
    iget-object v2, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mRecentUninstallAppsList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;-><init>(Landroid/content/Context;Lcom/lge/launcher3/recentuninstall/RUActivity;ILjava/util/List;)V

    .line 150
    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 152
    invoke-direct {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->refreshList()V

    .line 153
    invoke-virtual {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->initNormalActionBar()V

    goto :goto_27

    .line 156
    :pswitch_85
    const v0, 0x7f040038

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->setContentView(I)V

    .line 157
    invoke-virtual {p0, v3}, Lcom/lge/launcher3/recentuninstall/RUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mListview:Landroid/widget/ListView;

    .line 158
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mListview:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 159
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 160
    new-instance v0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    .line 161
    const v1, 0x7f040037

    iget-object v2, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mRecentUninstallAppsList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;-><init>(Landroid/content/Context;Lcom/lge/launcher3/recentuninstall/RUActivity;ILjava/util/List;)V

    .line 160
    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 162
    invoke-direct {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->refreshList()V

    .line 163
    invoke-virtual {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->initMultiSelectActionBar()V

    .line 164
    invoke-virtual {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->initMultiSelectCmdBtn()V

    .line 165
    invoke-direct {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->initUninstallAppCount()V

    goto/16 :goto_27

    .line 140
    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_85
    .end packed-switch
.end method

.method public initMultiSelectActionBar()V
    .registers 5

    .prologue
    const/16 v2, 0x10

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 178
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 179
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 180
    const v0, 0x7f04003a

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 181
    invoke-virtual {v1, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 183
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e00c4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppSelectAll:Landroid/widget/CheckBox;

    .line 184
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e00c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppCount:Landroid/widget/TextView;

    .line 187
    :try_start_35
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppSelectAll:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lge/R$dimen;->type_d03_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/CheckBox;->setTextSize(IF)V
    :try_end_45
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_35 .. :try_end_45} :catch_4b

    .line 191
    :goto_45
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void

    .line 189
    :catch_4b
    move-exception v0

    sget-object v0, Lcom/lge/launcher3/recentuninstall/RUActivity;->TAG:Ljava/lang/String;

    const-string v1, "Not implement lgapi.jar in framework"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45
.end method

.method public initMultiSelectCmdBtn()V
    .registers 3

    .prologue
    .line 269
    const v0, 0x7f0e00c0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppBtnCancel:Landroid/widget/Button;

    .line 270
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppBtnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/lge/launcher3/recentuninstall/RUActivity$3;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/recentuninstall/RUActivity$3;-><init>(Lcom/lge/launcher3/recentuninstall/RUActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    const v0, 0x7f0e00c1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppBtnOK:Landroid/widget/Button;

    .line 281
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppBtnOK:Landroid/widget/Button;

    new-instance v1, Lcom/lge/launcher3/recentuninstall/RUActivity$4;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/recentuninstall/RUActivity$4;-><init>(Lcom/lge/launcher3/recentuninstall/RUActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    return-void
.end method

.method public initNormalActionBar()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 256
    invoke-virtual {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 257
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 258
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 259
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 261
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1d

    .line 262
    invoke-virtual {p0, v3}, Lcom/lge/launcher3/recentuninstall/RUActivity;->setOptionMenuEnable(Z)V

    .line 266
    :goto_1c
    return-void

    .line 264
    :cond_1d
    invoke-virtual {p0, v2}, Lcom/lge/launcher3/recentuninstall/RUActivity;->setOptionMenuEnable(Z)V

    goto :goto_1c
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 412
    invoke-static {}, Lcom/lge/launcher3/recentuninstall/RUActivity;->$SWITCH_TABLE$com$lge$launcher3$recentuninstall$RUActivity$RECENT_UNINSTALL_MODE()[I

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mCurState:Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;

    invoke-virtual {v1}, Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 425
    :cond_f
    :goto_f
    return-void

    .line 414
    :pswitch_10
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_f

    .line 417
    :pswitch_14
    sget-object v0, Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;->NORMAL:Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mCurState:Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;

    .line 418
    invoke-virtual {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->initLayoutComponent()V

    .line 419
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mActionBarSelect:Landroid/view/MenuItem;

    if-eqz v0, :cond_f

    .line 420
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mActionBarSelect:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_f

    .line 412
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_10
        :pswitch_14
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 391
    invoke-static {}, Lcom/lge/launcher3/recentuninstall/RUActivity;->$SWITCH_TABLE$com$lge$launcher3$recentuninstall$RUActivity$RECENT_UNINSTALL_MODE()[I

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mCurState:Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;

    invoke-virtual {v1}, Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 408
    :cond_f
    :goto_f
    :pswitch_f
    return-void

    .line 395
    :pswitch_10
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 396
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    instance-of v0, v0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    if-eqz v0, :cond_f

    .line 397
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    check-cast v0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mDeleteAdapter:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    .line 398
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mDeleteAdapter:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mDeleteAdapter:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    invoke-virtual {v1}, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->getSelectedCount()I

    move-result v1

    if-ne v0, v1, :cond_46

    const/4 v0, 0x0

    .line 399
    :goto_33
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 400
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mDeleteAdapter:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->setSelectAll(Z)V

    .line 401
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mDeleteAdapter:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->notifyDataSetChanged()V

    .line 402
    invoke-direct {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->updateUninstallAppCount()V

    goto :goto_f

    .line 398
    :cond_46
    const/4 v0, 0x1

    goto :goto_33

    .line 391
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 77
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$2$1d5b537b(Landroid/app/Activity;)V

    sget-object v0, Lcom/lge/launcher3/recentuninstall/RUActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->initLayoutComponent()V

    .line 85
    invoke-static {p0}, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/recentuninstall/RUProgressListManager;

    move-result-object v0

    new-instance v1, Lcom/lge/launcher3/recentuninstall/RUActivity$2;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/recentuninstall/RUActivity$2;-><init>(Lcom/lge/launcher3/recentuninstall/RUActivity;)V

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->setPackageChangedCallback(Lcom/lge/launcher3/recentuninstall/RUProgressListManager$PackageChangedCallback;)V

    .line 95
    invoke-virtual {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Home_ShowRecentlyUninstalled"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 351
    const v0, 0x7f0f008f

    .line 350
    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mActionBarSelect:Landroid/view/MenuItem;

    .line 352
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mActionBarSelect:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 353
    invoke-virtual {p0, v2}, Lcom/lge/launcher3/recentuninstall/RUActivity;->setOptionMenuEnable(Z)V

    .line 354
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 429
    sget-object v0, Lcom/lge/launcher3/recentuninstall/RUActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 432
    invoke-static {p0}, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/recentuninstall/RUProgressListManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->setPackageChangedCallback(Lcom/lge/launcher3/recentuninstall/RUProgressListManager$PackageChangedCallback;)V

    .line 434
    iput-object v2, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppSelectAll:Landroid/widget/CheckBox;

    .line 435
    iput-object v2, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppCount:Landroid/widget/TextView;

    .line 437
    iput-object v2, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppCountFormat:Ljava/lang/String;

    .line 439
    iput-object v2, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppBtnCancel:Landroid/widget/Button;

    .line 440
    iput-object v2, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mUninstallAppBtnOK:Landroid/widget/Button;

    .line 442
    iput-object v2, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mListview:Landroid/widget/ListView;

    .line 444
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_29

    .line 445
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 446
    iput-object v2, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 449
    :cond_29
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mReinstallAdapter:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;

    if-eqz v0, :cond_34

    .line 450
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mReinstallAdapter:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->clear()V

    .line 451
    iput-object v2, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mReinstallAdapter:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;

    .line 454
    :cond_34
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mDeleteAdapter:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    if-eqz v0, :cond_3f

    .line 455
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mDeleteAdapter:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->clear()V

    .line 456
    iput-object v2, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mDeleteAdapter:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    .line 459
    :cond_3f
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mRecentUninstallAppsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4a

    .line 460
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mRecentUninstallAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 461
    iput-object v2, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mRecentUninstallAppsList:Ljava/util/ArrayList;

    .line 463
    :cond_4a
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .prologue
    .line 371
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 380
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 373
    :pswitch_c
    sget-object v0, Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;->SELECT_ALL:Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;

    iput-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mCurState:Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;

    .line 374
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mActionBarSelect:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 375
    invoke-virtual {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->initLayoutComponent()V

    .line 376
    const/4 v0, 0x1

    goto :goto_b

    .line 371
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mActionBarSelect:Landroid/view/MenuItem;

    const v1, 0x7f020018

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 360
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_19

    .line 361
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->setOptionMenuEnable(Z)V

    .line 365
    :goto_14
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 363
    :cond_19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->setOptionMenuEnable(Z)V

    goto :goto_14
.end method

.method public refreshItems()V
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 174
    return-void
.end method

.method public setOptionMenuEnable(Z)V
    .registers 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mActionBarSelect:Landroid/view/MenuItem;

    if-eqz v0, :cond_9

    .line 385
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mActionBarSelect:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 387
    :cond_9
    return-void
.end method

.method startEnableProgress(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 323
    sget-object v0, Lcom/lge/launcher3/recentuninstall/RUActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Enable Package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 327
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 326
    :try_start_20
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_23} :catch_67

    .line 335
    new-array v0, v3, [Ljava/lang/String;

    .line 336
    aput-object p1, v0, v6

    .line 337
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 338
    new-instance v2, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    .line 339
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 338
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    invoke-virtual {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0169

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Lcom/lge/launcher3/util/TalkBackUtils;->sendAccessibilityEvent(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 346
    :goto_66
    return-void

    .line 328
    :catch_67
    move-exception v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_66
.end method

.method startUninstallProgress()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 295
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 298
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 300
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mRecentUninstallAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    invoke-virtual {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0113

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v8}, Lcom/lge/launcher3/util/TalkBackUtils;->sendAccessibilityEvent(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 320
    return-void

    .line 300
    :cond_3b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/recentuninstall/RUAppInfo;

    .line 301
    invoke-virtual {v0}, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 302
    invoke-virtual {v0}, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 304
    sget-object v4, Lcom/lge/launcher3/recentuninstall/RUActivity;->TAG:Ljava/lang/String;

    const-string v5, "startUninstallProgress() : packageName(%s)"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {p0}, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/recentuninstall/RUProgressListManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/lge/launcher3/recentuninstall/RUProgressListManager;->addUninstallProgress(Ljava/lang/String;)V

    .line 309
    const/4 v4, 0x0

    :try_start_62
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v2, v0, v4, v5, v6}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_6a} :catch_6b

    goto :goto_16

    .line 310
    :catch_6b
    move-exception v0

    .line 312
    sget-object v4, Lcom/lge/launcher3/recentuninstall/RUActivity;->TAG:Ljava/lang/String;

    const-string v5, "Failed to talk to package manager"

    invoke-static {v4, v5, v0}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_16
.end method

.method public updateMultiSelectActionBar()V
    .registers 8

    .prologue
    const/16 v1, 0x10

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 234
    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 235
    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 236
    const v0, 0x7f04003a

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 237
    invoke-virtual {v4, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 238
    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e00c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 240
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mRecentUninstallAppsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :cond_2b
    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 245
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 246
    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 247
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mRecentUninstallAppsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_5d

    .line 248
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 253
    :goto_4c
    return-void

    .line 240
    :cond_4d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/recentuninstall/RUAppInfo;

    .line 241
    invoke-virtual {v1}, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 242
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2b

    .line 250
    :cond_5d
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4c
.end method
