.class public Lcom/lge/launcher3/help/HelpFragment;
.super Landroid/preference/LGPreferenceFragment;
.source "HelpFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mInfo:Lcom/lge/launcher3/help/HelpItemInfo;

.field private mNextPageButton:Landroid/widget/Button;

.field private mPageIndicator:Landroid/widget/LinearLayout;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPrevPageButton:Landroid/widget/Button;

.field private mPrevSelectedPageIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/lge/launcher3/help/HelpFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/help/HelpFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/preference/LGPreferenceFragment;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mActivity:Landroid/app/Activity;

    .line 29
    iput-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPager:Landroid/support/v4/view/ViewPager;

    .line 30
    iput-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPageIndicator:Landroid/widget/LinearLayout;

    .line 32
    iput-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPrevPageButton:Landroid/widget/Button;

    .line 33
    iput-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mNextPageButton:Landroid/widget/Button;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPrevSelectedPageIndex:I

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/help/HelpFragment;)Lcom/lge/launcher3/help/HelpItemInfo;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mInfo:Lcom/lge/launcher3/help/HelpItemInfo;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/help/HelpFragment;)I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPrevSelectedPageIndex:I

    return v0
.end method

.method static synthetic access$2(Lcom/lge/launcher3/help/HelpFragment;II)V
    .registers 3

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/help/HelpFragment;->updatePageIndicator(II)V

    return-void
.end method

.method static synthetic access$3(Lcom/lge/launcher3/help/HelpFragment;I)V
    .registers 2

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/lge/launcher3/help/HelpFragment;->updatePageButton(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/lge/launcher3/help/HelpFragment;I)V
    .registers 2

    .prologue
    .line 35
    iput p1, p0, Lcom/lge/launcher3/help/HelpFragment;->mPrevSelectedPageIndex:I

    return-void
.end method

.method static synthetic access$5(Lcom/lge/launcher3/help/HelpFragment;)Landroid/support/v4/view/ViewPager;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lge/launcher3/help/HelpFragment;I)Z
    .registers 3

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/lge/launcher3/help/HelpFragment;->isFirstPage(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/lge/launcher3/help/HelpFragment;I)Z
    .registers 3

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/lge/launcher3/help/HelpFragment;->isLastPage(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/lge/launcher3/help/HelpFragment;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private isFirstPage(I)Z
    .registers 3

    .prologue
    .line 232
    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private isLastPage(I)Z
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mInfo:Lcom/lge/launcher3/help/HelpItemInfo;

    invoke-virtual {v0}, Lcom/lge/launcher3/help/HelpItemInfo;->size()I

    move-result v0

    .line 160
    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private setupPageButton(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 166
    const v0, 0x7f0e004a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPrevPageButton:Landroid/widget/Button;

    .line 167
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPrevPageButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPrevPageButton:Landroid/widget/Button;

    new-instance v1, Lcom/lge/launcher3/help/HelpFragment$2;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/help/HelpFragment$2;-><init>(Lcom/lge/launcher3/help/HelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v0, 0x7f0e004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mNextPageButton:Landroid/widget/Button;

    .line 181
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mNextPageButton:Landroid/widget/Button;

    new-instance v1, Lcom/lge/launcher3/help/HelpFragment$3;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/help/HelpFragment$3;-><init>(Lcom/lge/launcher3/help/HelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    return-void
.end method

.method private setupPageIndicator(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x2

    .line 108
    const v0, 0x7f0e0049

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPageIndicator:Landroid/widget/LinearLayout;

    .line 109
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPageIndicator:Landroid/widget/LinearLayout;

    if-nez v0, :cond_12

    .line 134
    :cond_11
    return-void

    .line 113
    :cond_12
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mInfo:Lcom/lge/launcher3/help/HelpItemInfo;

    invoke-virtual {v0}, Lcom/lge/launcher3/help/HelpItemInfo;->size()I

    move-result v3

    move v2, v1

    .line 114
    :goto_19
    if-ge v2, v3, :cond_11

    .line 115
    new-instance v4, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-direct {p0, v2}, Lcom/lge/launcher3/help/HelpFragment;->isFirstPage(I)Z

    move-result v0

    if-eqz v0, :cond_51

    const v0, 0x7f02005a

    .line 119
    :goto_2b
    iget-object v5, p0, Lcom/lge/launcher3/help/HelpFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-direct {p0, v2}, Lcom/lge/launcher3/help/HelpFragment;->isLastPage(I)Z

    move-result v5

    if-nez v5, :cond_55

    .line 124
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 127
    :goto_3e
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 129
    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 130
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    .line 118
    :cond_51
    const v0, 0x7f020059

    goto :goto_2b

    :cond_55
    move v0, v1

    goto :goto_3e
.end method

.method private setupPager(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 74
    const v0, 0x7f0e0048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPager:Landroid/support/v4/view/ViewPager;

    .line 75
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/lge/launcher3/help/HelpPageAdapter;

    iget-object v2, p0, Lcom/lge/launcher3/help/HelpFragment;->mInfo:Lcom/lge/launcher3/help/HelpItemInfo;

    invoke-direct {v1, v2}, Lcom/lge/launcher3/help/HelpPageAdapter;-><init>(Lcom/lge/launcher3/help/HelpItemInfo;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 76
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lge/launcher3/help/HelpFragment;->mInfo:Lcom/lge/launcher3/help/HelpItemInfo;

    invoke-virtual {v1}, Lcom/lge/launcher3/help/HelpItemInfo;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/lge/launcher3/help/HelpFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 78
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/lge/launcher3/help/HelpFragment$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/help/HelpFragment$1;-><init>(Lcom/lge/launcher3/help/HelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 96
    return-void
.end method

.method private updatePageButton(I)V
    .registers 5

    .prologue
    const v2, 0x7f0f013c

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, p1}, Lcom/lge/launcher3/help/HelpFragment;->isFirstPage(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 143
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPrevPageButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mNextPageButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 152
    :goto_16
    return-void

    .line 145
    :cond_17
    invoke-direct {p0, p1}, Lcom/lge/launcher3/help/HelpFragment;->isLastPage(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 146
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPrevPageButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mNextPageButton:Landroid/widget/Button;

    const v1, 0x7f0f013e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_16

    .line 149
    :cond_2b
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPrevPageButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mNextPageButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_16
.end method

.method private updatePageIndicator(II)V
    .registers 5

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 203
    if-eqz v0, :cond_10

    .line 204
    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    :cond_10
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 208
    if-eqz v0, :cond_20

    .line 209
    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    :cond_20
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .prologue
    .line 100
    sget-object v0, Lcom/lge/launcher3/help/HelpFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConfigurationChanged newConfig:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 102
    invoke-super {p0, p1}, Landroid/preference/LGPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 103
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 41
    sget-object v0, Lcom/lge/launcher3/help/HelpFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1}, Landroid/preference/LGPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0, v2}, Lcom/lge/launcher3/help/HelpFragment;->setHasOptionsMenu(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/lge/launcher3/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mActivity:Landroid/app/Activity;

    .line 47
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_1f

    .line 49
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 52
    :cond_1f
    sget-object v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 53
    new-instance v0, Lcom/lge/launcher3/help/HelpItemInfo;

    sget-object v1, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lge/launcher3/help/HelpFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/help/HelpItemInfo;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mInfo:Lcom/lge/launcher3/help/HelpItemInfo;

    .line 57
    :goto_30
    return-void

    .line 55
    :cond_31
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_30
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 62
    const v0, 0x7f040019

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 64
    invoke-direct {p0, v0}, Lcom/lge/launcher3/help/HelpFragment;->setupPager(Landroid/view/View;)V

    .line 65
    invoke-direct {p0, v0}, Lcom/lge/launcher3/help/HelpFragment;->setupPageIndicator(Landroid/view/View;)V

    .line 66
    invoke-direct {p0, v0}, Lcom/lge/launcher3/help/HelpFragment;->setupPageButton(Landroid/view/View;)V

    .line 68
    return-object v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 239
    sget-object v0, Lcom/lge/launcher3/help/HelpFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-super {p0}, Landroid/preference/LGPreferenceFragment;->onDestroy()V

    .line 243
    iput-object v2, p0, Lcom/lge/launcher3/help/HelpFragment;->mPrevPageButton:Landroid/widget/Button;

    .line 244
    iput-object v2, p0, Lcom/lge/launcher3/help/HelpFragment;->mNextPageButton:Landroid/widget/Button;

    .line 246
    iput-object v2, p0, Lcom/lge/launcher3/help/HelpFragment;->mPageIndicator:Landroid/widget/LinearLayout;

    .line 248
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1c

    .line 249
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->clearOnPageChangeListeners()V

    .line 250
    iput-object v2, p0, Lcom/lge/launcher3/help/HelpFragment;->mPager:Landroid/support/v4/view/ViewPager;

    .line 252
    :cond_1c
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .prologue
    .line 215
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 224
    :goto_7
    invoke-super {p0, p1}, Landroid/preference/LGPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 217
    :pswitch_c
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 218
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_7

    .line 215
    nop

    :pswitch_data_18
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method
