.class public Lcom/lge/launcher3/widgettray/LGWidgetContainerView;
.super Lcom/android/launcher3/widget/WidgetsContainerView;
.source "LGWidgetContainerView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGroupWidgetItemAdapter:Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;

.field private mGroupWidgetPopupLayout:Landroid/view/ViewGroup;

.field private mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

.field private mUninstallBtn:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

.field private mWidgetContainer:Landroid/view/ViewGroup;

.field private mWidgetsKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    new-instance v0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$1;-><init>(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)V

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mWidgetsKeyListener:Landroid/view/View$OnKeyListener;

    .line 50
    invoke-direct {p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/WidgetsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    new-instance v0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$1;-><init>(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)V

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mWidgetsKeyListener:Landroid/view/View$OnKeyListener;

    .line 55
    invoke-direct {p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->init()V

    .line 56
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mUninstallBtn:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)Landroid/support/v4/view/ViewPager;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mViewPagerAdapter:Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;I)V
    .registers 2

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->announceAccessibility(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mWidgetContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mGroupWidgetPopupLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private announceAccessibility(I)V
    .registers 9

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 190
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 189
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 191
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0040

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    .line 195
    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mViewPagerAdapter:Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

    invoke-virtual {v3}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0112

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    .line 199
    iget-object v3, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 200
    iget-object v3, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 197
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 203
    :cond_8b
    return-void
.end method

.method private createWidgetPopupView(Ljava/lang/Object;)V
    .registers 9

    .prologue
    .line 279
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mGroupWidgetPopupLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0e00ee

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 280
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mGroupWidgetPopupLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0e00f9

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/GridView;

    .line 282
    const-string v1, ""

    .line 283
    instance-of v1, p1, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;

    if-eqz v1, :cond_54

    .line 284
    check-cast p1, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;

    .line 285
    invoke-virtual {p1}, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->getGroupList()Ljava/util/List;

    move-result-object v2

    .line 286
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mContext:Landroid/content/Context;

    .line 287
    iget-object v3, p1, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-static {v1, v3}, Lcom/lge/launcher3/util/PackageUtils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    :goto_2f
    const/4 v5, 0x0

    .line 295
    iget-object v3, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v3, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    if-eqz v3, :cond_40

    .line 296
    iget-object v3, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v3, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v5, v3, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    .line 298
    :cond_40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    new-instance v0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;

    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z)V

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mGroupWidgetItemAdapter:Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;

    .line 300
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mGroupWidgetItemAdapter:Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 301
    return-void

    .line 289
    :cond_54
    check-cast p1, Lcom/lge/launcher3/widgettray/GroupResolveInfo;

    .line 290
    invoke-virtual {p1}, Lcom/lge/launcher3/widgettray/GroupResolveInfo;->getGroupList()Ljava/util/List;

    move-result-object v2

    .line 291
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mContext:Landroid/content/Context;

    .line 292
    iget-object v3, p1, Lcom/lge/launcher3/widgettray/GroupResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 291
    invoke-static {v1, v3}, Lcom/lge/launcher3/util/PackageUtils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2f
.end method

.method private init()V
    .registers 4

    .prologue
    .line 59
    new-instance v0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, p0, p0, v2}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mViewPagerAdapter:Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

    .line 60
    return-void
.end method

.method private initPageIndicator()V
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->setVisibility(I)V

    .line 151
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->refreshPageIndicator()V

    .line 153
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$4;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$4;-><init>(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 173
    return-void
.end method


# virtual methods
.method public addWidgets(Lcom/android/launcher3/model/WidgetsModel;)V
    .registers 4

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mViewPagerAdapter:Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

    invoke-virtual {v1}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_a

    .line 130
    const/4 v0, 0x1

    .line 133
    :cond_a
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mViewPagerAdapter:Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->setWidgetsModel(Lcom/android/launcher3/model/WidgetsModel;)V

    .line 134
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mViewPagerAdapter:Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

    invoke-virtual {v1}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->notifyDataSetChanged()V

    .line 137
    if-eqz v0, :cond_21

    .line 138
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mViewPagerAdapter:Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

    invoke-virtual {v1}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->getFirstPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 142
    :cond_21
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    invoke-virtual {v0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2d

    .line 143
    invoke-direct {p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->initPageIndicator()V

    .line 147
    :goto_2c
    return-void

    .line 145
    :cond_2d
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->refreshPageIndicator()V

    goto :goto_2c
.end method

.method public bringToFront()V
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->announceAccessibility(I)V

    .line 351
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mViewPagerAdapter:Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->notifyDataSetChanged()V

    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->setVisibilityGroupWidgetPopupView(Z)V

    .line 353
    invoke-super {p0}, Lcom/android/launcher3/widget/WidgetsContainerView;->bringToFront()V

    .line 354
    return-void
.end method

.method public closeGroupWidgetPopup()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 358
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->isOpenGroupWidgetPopup()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 359
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->setVisibilityGroupWidgetPopupView(Z)V

    .line 360
    const/4 v0, 0x1

    .line 362
    :cond_b
    return v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 315
    const v0, 0x7f0e0059

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isOpenGroupWidgetPopup()Z
    .registers 3

    .prologue
    .line 366
    const/4 v0, 0x0

    .line 367
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mGroupWidgetPopupLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_e

    .line 368
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mGroupWidgetPopupLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    .line 369
    const/4 v0, 0x1

    .line 371
    :cond_e
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PendingAddItemInfo;

    move-object v1, p1

    .line 208
    check-cast v1, Lcom/android/launcher3/widget/WidgetCell;

    .line 209
    iget-object v2, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mUninstallBtn:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;

    invoke-virtual {v2}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->isUninstallMode()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 210
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->setVisibilityGroupWidgetPopupView(Z)V

    .line 211
    const v2, 0x7f0e00f1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/widgettray/WidgetsImageView;

    .line 212
    invoke-virtual {v1}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->getIsDownloaded()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 213
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    .line 214
    const/4 v2, 0x0

    .line 213
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/launcher3/Launcher;->startApplicationUninstallActivity(Landroid/content/ComponentName;ILcom/android/launcher3/compat/UserHandleCompat;)Z

    .line 228
    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    move-object v0, p1

    .line 219
    check-cast v0, Lcom/lge/launcher3/widgettray/LGWidgetCell;

    invoke-virtual {v0}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->getInfo()Ljava/lang/Object;

    move-result-object v0

    .line 220
    instance-of v1, v0, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;

    if-nez v1, :cond_3d

    .line 221
    instance-of v1, v0, Lcom/lge/launcher3/widgettray/GroupResolveInfo;

    if-eqz v1, :cond_44

    .line 222
    :cond_3d
    invoke-virtual {p0, v3}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->setVisibilityGroupWidgetPopupView(Z)V

    .line 223
    invoke-direct {p0, v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->createWidgetPopupView(Ljava/lang/Object;)V

    goto :goto_2d

    .line 226
    :cond_44
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/WidgetsContainerView;->onClick(Landroid/view/View;)V

    goto :goto_2d
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 335
    if-nez p3, :cond_15

    if-eqz p4, :cond_15

    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    if-eq p1, v0, :cond_22

    .line 336
    instance-of v0, p1, Lcom/android/launcher3/DeleteDropTarget;

    if-nez v0, :cond_22

    instance-of v0, p1, Lcom/android/launcher3/Folder;

    if-nez v0, :cond_22

    .line 339
    :cond_15
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    .line 340
    const/16 v2, 0x12c

    const/4 v3, 0x0

    .line 339
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 341
    if-nez p4, :cond_22

    .line 342
    iput-boolean v4, p2, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 345
    :cond_22
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 346
    return-void
.end method

.method protected onFinishInflate()V
    .registers 7

    .prologue
    const v5, 0x3e23d70a    # 0.16f

    .line 64
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$2;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$2;-><init>(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 73
    const v0, 0x7f0e001a

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mContent:Landroid/view/View;

    .line 74
    const v0, 0x7f0e0100

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mUninstallBtn:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;

    .line 75
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mUninstallBtn:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;

    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mViewPagerAdapter:Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

    invoke-virtual {v0, p0, v1, v2}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->init(Lcom/android/launcher3/widget/WidgetsContainerView;Lcom/android/launcher3/Launcher;Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;)V

    .line 76
    const v0, 0x7f0e0102

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 77
    const v0, 0x7f0e00fe

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mWidgetContainer:Landroid/view/ViewGroup;

    .line 78
    const v0, 0x7f0e0104

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mGroupWidgetPopupLayout:Landroid/view/ViewGroup;

    .line 79
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mGroupWidgetPopupLayout:Landroid/view/ViewGroup;

    .line 80
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 79
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 81
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/lge/launcher3/util/WindowUtils;->getDisplayHeight(Landroid/app/Activity;)I

    move-result v1

    .line 82
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    int-to-float v3, v1

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 83
    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 82
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 84
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mGroupWidgetPopupLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->setVisibilityGroupWidgetPopupView(Z)V

    .line 86
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 87
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 86
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 88
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mViewPagerAdapter:Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 89
    const v0, 0x7f0e0103

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    .line 90
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    if-eqz v0, :cond_d6

    .line 91
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    new-instance v1, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$3;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$3;-><init>(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)V

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->setListener(Lcom/lge/launcher3/pageindicator/PageIndicatorListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    const v1, 0x7f09007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    iget-object v2, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    invoke-virtual {v2}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->getPaddingLeft()I

    move-result v2

    .line 103
    iget-object v3, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    invoke-virtual {v3}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->getPaddingRight()I

    move-result v3

    .line 102
    invoke-virtual {v1, v2, v0, v3, v0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->setPadding(IIII)V

    .line 104
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 105
    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 106
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->setTypePadding(I)V

    .line 109
    :cond_d6
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mWidgetsKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 110
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 305
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mUninstallBtn:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;

    invoke-virtual {v1}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->isUninstallMode()Z

    move-result v1

    if-nez v1, :cond_e

    .line 306
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/WidgetsContainerView;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 309
    :goto_d
    return v0

    .line 308
    :cond_e
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->setVisibilityGroupWidgetPopupView(Z)V

    goto :goto_d
.end method

.method protected onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 3

    .prologue
    .line 330
    return-void
.end method

.method public refreshPageIndicator()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 176
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    invoke-virtual {v0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mViewPagerAdapter:Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

    invoke-virtual {v1}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_27

    .line 177
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    invoke-virtual {v0, v3}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->removeAllMarkers(Z)V

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    const/4 v0, 0x0

    :goto_1a
    iget-object v2, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mViewPagerAdapter:Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

    invoke-virtual {v2}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_28

    .line 184
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    invoke-virtual {v0, v1, v3}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->addMarkers(Ljava/util/ArrayList;Z)V

    .line 186
    :cond_27
    return-void

    .line 182
    :cond_28
    new-instance v2, Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    invoke-direct {v2}, Lcom/android/launcher3/PageIndicator$PageMarkerResources;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method public resetMode()V
    .registers 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mUninstallBtn:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->setUninstallMode(Z)V

    .line 320
    return-void
.end method

.method public scrollToTop()V
    .registers 1

    .prologue
    .line 325
    return-void
.end method

.method public setVisibilityGroupWidgetPopupView(Z)V
    .registers 11

    .prologue
    const/4 v8, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const-wide/16 v6, 0x32

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 231
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mGroupWidgetPopupLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_78

    .line 232
    if-eqz p1, :cond_79

    .line 233
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mGroupWidgetPopupLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 234
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mWidgetContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 235
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mGroupWidgetPopupLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mGroupWidgetPopupLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 237
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mGroupWidgetPopupLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 238
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mGroupWidgetPopupLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 239
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mGroupWidgetPopupLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 240
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mGroupWidgetPopupLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 241
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mWidgetContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$5;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$5;-><init>(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 273
    :cond_78
    :goto_78
    return-void

    .line 253
    :cond_79
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mWidgetContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 254
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mGroupWidgetPopupLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 255
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mWidgetContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b9

    .line 256
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mWidgetContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mWidgetContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 258
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mWidgetContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 260
    :cond_b9
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->mGroupWidgetPopupLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$6;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$6;-><init>(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_78
.end method
