.class public Lcom/lge/launcher3/initialguide/InitialGuideActivity;
.super Landroid/app/Activity;
.source "InitialGuideActivity.java"

# interfaces
.implements Lcom/lge/launcher3/crosscutting/INonTitleBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;
    }
.end annotation


# static fields
.field private static final MIN_TIME_TO_CANCEL_SHOWN:J = 0x12cL

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mIsRtL:Z

.field private mNextPageButton:Landroid/widget/Button;

.field private mPageIndicator:Landroid/widget/LinearLayout;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPrevPageButton:Landroid/widget/Button;

.field private mPrevSelectedPageIndex:I

.field private mStartTimeToBeShown:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->TAG:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 41
    iput-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPageIndicator:Landroid/widget/LinearLayout;

    .line 43
    iput-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPrevPageButton:Landroid/widget/Button;

    .line 44
    iput-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mNextPageButton:Landroid/widget/Button;

    .line 46
    iput v2, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPrevSelectedPageIndex:I

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mStartTimeToBeShown:J

    .line 51
    iput-boolean v2, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mIsRtL:Z

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/initialguide/InitialGuideActivity;)I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPrevSelectedPageIndex:I

    return v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/initialguide/InitialGuideActivity;II)V
    .registers 3

    .prologue
    .line 282
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->updatePageIndicator(II)V

    return-void
.end method

.method static synthetic access$2(Lcom/lge/launcher3/initialguide/InitialGuideActivity;I)V
    .registers 2

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->updatePageMoveButton(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/lge/launcher3/initialguide/InitialGuideActivity;I)V
    .registers 2

    .prologue
    .line 46
    iput p1, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPrevSelectedPageIndex:I

    return-void
.end method

.method static synthetic access$4(Lcom/lge/launcher3/initialguide/InitialGuideActivity;)Landroid/support/v4/view/ViewPager;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lge/launcher3/initialguide/InitialGuideActivity;I)Z
    .registers 3

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->isFirstPage(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/lge/launcher3/initialguide/InitialGuideActivity;)Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mIsRtL:Z

    return v0
.end method

.method static synthetic access$7(Lcom/lge/launcher3/initialguide/InitialGuideActivity;I)Z
    .registers 3

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->isLastPage(I)Z

    move-result v0

    return v0
.end method

.method private isFirstPage(I)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 317
    invoke-static {p0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->getPageCount()I

    move-result v1

    .line 318
    iget-boolean v2, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mIsRtL:Z

    if-eqz v2, :cond_13

    add-int/lit8 v1, v1, -0x1

    :goto_f
    if-ne p1, v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    :cond_13
    move v1, v0

    goto :goto_f
.end method

.method private isLastPage(I)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 326
    invoke-static {p0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->getPageCount()I

    move-result v1

    .line 327
    iget-boolean v2, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mIsRtL:Z

    if-eqz v2, :cond_12

    move v1, v0

    :goto_e
    if-ne p1, v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    :cond_12
    add-int/lit8 v1, v1, -0x1

    goto :goto_e
.end method

.method private setupOrientation()V
    .registers 3

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 120
    if-nez v0, :cond_11

    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->setRequestedOrientation(I)V

    .line 123
    :cond_11
    return-void
.end method

.method private setupPageIndicator()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x2

    .line 203
    const v0, 0x7f0e0049

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPageIndicator:Landroid/widget/LinearLayout;

    .line 204
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPageIndicator:Landroid/widget/LinearLayout;

    if-nez v0, :cond_12

    .line 234
    :cond_11
    return-void

    .line 208
    :cond_12
    invoke-static {p0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->getPageCount()I

    move-result v3

    .line 211
    const/4 v0, 0x1

    if-le v3, v0, :cond_11

    move v2, v1

    .line 215
    :goto_1e
    if-ge v2, v3, :cond_11

    .line 216
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 218
    invoke-direct {p0, v2}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->isFirstPage(I)Z

    move-result v0

    if-eqz v0, :cond_55

    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->ON:Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 220
    :goto_31
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-boolean v5, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mIsRtL:Z

    if-eqz v5, :cond_5c

    invoke-direct {p0, v2}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->isFirstPage(I)Z

    move-result v5

    if-nez v5, :cond_62

    .line 224
    :cond_3e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 227
    :goto_42
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 229
    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 230
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1e

    .line 219
    :cond_55
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->OFF:Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_31

    .line 223
    :cond_5c
    invoke-direct {p0, v2}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->isLastPage(I)Z

    move-result v5

    if-eqz v5, :cond_3e

    :cond_62
    move v0, v1

    goto :goto_42
.end method

.method private setupPageMoveButton()V
    .registers 3

    .prologue
    .line 239
    const v0, 0x7f0e004a

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPrevPageButton:Landroid/widget/Button;

    .line 240
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPrevPageButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPrevPageButton:Landroid/widget/Button;

    new-instance v1, Lcom/lge/launcher3/initialguide/InitialGuideActivity$2;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity$2;-><init>(Lcom/lge/launcher3/initialguide/InitialGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const v0, 0x7f0e004b

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mNextPageButton:Landroid/widget/Button;

    .line 254
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mNextPageButton:Landroid/widget/Button;

    new-instance v1, Lcom/lge/launcher3/initialguide/InitialGuideActivity$3;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity$3;-><init>(Lcom/lge/launcher3/initialguide/InitialGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    invoke-static {p0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->getPageCount()I

    move-result v0

    .line 273
    const/4 v1, 0x1

    if-gt v0, v1, :cond_44

    .line 274
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mNextPageButton:Landroid/widget/Button;

    const v1, 0x7f0f0028

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 276
    :cond_44
    return-void
.end method

.method private setupPager()V
    .registers 5

    .prologue
    .line 157
    invoke-static {p0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->getPageCount()I

    move-result v1

    .line 159
    const v0, 0x7f0e0048

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 160
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/lge/launcher3/initialguide/InitialGuidePagerAdapter;

    invoke-direct {v2, p0}, Lcom/lge/launcher3/initialguide/InitialGuidePagerAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 162
    iget-boolean v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mIsRtL:Z

    if-eqz v0, :cond_2d

    .line 163
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 164
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPrevSelectedPageIndex:I

    .line 167
    :cond_2d
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 169
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/lge/launcher3/initialguide/InitialGuideActivity$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity$1;-><init>(Lcom/lge/launcher3/initialguide/InitialGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 198
    return-void
.end method

.method private setupTheme()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 129
    if-nez v0, :cond_8

    .line 152
    :cond_7
    :goto_7
    return-void

    .line 134
    :cond_8
    invoke-virtual {p0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 135
    const v2, 0x7f0c001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    .line 134
    div-float/2addr v1, v2

    .line 136
    const/high16 v2, -0x1000000

    .line 137
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 136
    invoke-static {v2, v1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    .line 138
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 142
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x700

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 145
    const/high16 v1, 0xc000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 147
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 149
    invoke-virtual {v0, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 150
    invoke-virtual {v0, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_7
.end method

.method private updatePageIndicator(II)V
    .registers 5

    .prologue
    .line 283
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 284
    if-eqz v0, :cond_13

    .line 285
    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->ON:Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

    invoke-virtual {v1, p0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    :cond_13
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 289
    if-eqz v0, :cond_26

    .line 290
    sget-object v1, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->OFF:Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;

    invoke-virtual {v1, p0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity$DotPageIndicatorDrawable;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    :cond_26
    return-void
.end method

.method private updatePageMoveButton(I)V
    .registers 5

    .prologue
    const v2, 0x7f0f013c

    const/4 v1, 0x0

    .line 300
    invoke-direct {p0, p1}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->isFirstPage(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 301
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPrevPageButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mNextPageButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 310
    :goto_16
    return-void

    .line 303
    :cond_17
    invoke-direct {p0, p1}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->isLastPage(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 304
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPrevPageButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mNextPageButton:Landroid/widget/Button;

    const v1, 0x7f0f013e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_16

    .line 307
    :cond_2b
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPrevPageButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mNextPageButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_16
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 99
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$2$1d5b537b(Landroid/app/Activity;)V

    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mIsRtL:Z

    .line 105
    invoke-direct {p0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->setupOrientation()V

    .line 107
    invoke-direct {p0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->setupTheme()V

    .line 109
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->setContentView(I)V

    .line 111
    invoke-direct {p0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->setupPager()V

    .line 112
    invoke-direct {p0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->setupPageIndicator()V

    .line 113
    invoke-direct {p0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->setupPageMoveButton()V

    .line 114
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 357
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 361
    iput-object v2, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPrevPageButton:Landroid/widget/Button;

    .line 362
    iput-object v2, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mNextPageButton:Landroid/widget/Button;

    .line 364
    iput-object v2, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPageIndicator:Landroid/widget/LinearLayout;

    .line 366
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1c

    .line 367
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->clearOnPageChangeListeners()V

    .line 368
    iput-object v2, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 371
    :cond_1c
    sget-object v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_OPERATOR:Ljava/lang/String;

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 372
    invoke-virtual {p0}, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/initialguide/InitialGuideManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->saveFirstShownTime()V

    .line 375
    :cond_31
    invoke-static {p0}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/initialguide/InitialGuideManager;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->isAlreadyShown()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 377
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->setInitialGuideActivityIsStarted(Z)V

    .line 380
    :cond_3f
    invoke-static {p0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->destroy()V

    .line 381
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 334
    if-eqz p1, :cond_25

    .line 335
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->TAG:Ljava/lang/String;

    const-string v1, "onWindowFocusChanged(%s)"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mStartTimeToBeShown:J

    .line 339
    invoke-static {p0}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/initialguide/InitialGuideManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->saveInitialGuideShown(Z)V

    .line 351
    :goto_24
    return-void

    .line 341
    :cond_25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->mStartTimeToBeShown:J

    sub-long/2addr v0, v2

    .line 342
    const-wide/16 v2, 0x12c

    cmp-long v2, v0, v2

    if-gez v2, :cond_39

    .line 345
    invoke-static {p0}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/initialguide/InitialGuideManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->saveInitialGuideShown(Z)V

    .line 348
    :cond_39
    sget-object v2, Lcom/lge/launcher3/initialguide/InitialGuideActivity;->TAG:Ljava/lang/String;

    const-string v3, "onWindowFocusChanged(%s) : activityShownTime(%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 349
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v7

    .line 348
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method
