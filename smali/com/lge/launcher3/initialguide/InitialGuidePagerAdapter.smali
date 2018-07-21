.class public Lcom/lge/launcher3/initialguide/InitialGuidePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "InitialGuidePagerAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/lge/launcher3/initialguide/InitialGuidePagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePagerAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePagerAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p1, p0, Lcom/lge/launcher3/initialguide/InitialGuidePagerAdapter;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private setupDescriptionMain(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;)V
    .registers 5

    .prologue
    .line 89
    const v0, 0x7f0e004d

    invoke-virtual {p2, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    if-nez v0, :cond_c

    .line 94
    :goto_b
    return-void

    .line 93
    :cond_c
    iget v1, p1, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;->mDescMainResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_b
.end method

.method private setupDescriptionSub(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;)V
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p1, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;->mDescSubResId:[I

    if-nez v0, :cond_6

    .line 141
    :cond_5
    return-void

    .line 108
    :cond_6
    const v0, 0x7f0e004e

    invoke-virtual {p2, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/LinearLayout;

    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    iget-object v6, p1, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;->mDescSubResId:[I

    array-length v7, v6

    move v5, v1

    :goto_16
    if-ge v5, v7, :cond_5

    aget v8, v6, v5

    .line 112
    iget-object v1, p0, Lcom/lge/launcher3/initialguide/InitialGuidePagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 113
    const v2, 0x7f04000b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 112
    check-cast v1, Landroid/widget/LinearLayout;

    .line 114
    if-nez v1, :cond_30

    .line 111
    :cond_2c
    :goto_2c
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_16

    .line 118
    :cond_30
    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 117
    check-cast v2, Landroid/widget/TextView;

    .line 120
    const v3, 0x7f0e0025

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 119
    check-cast v3, Landroid/widget/TextView;

    .line 121
    if-eqz v2, :cond_2c

    if-eqz v3, :cond_2c

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "  "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    iget-object v9, p0, Lcom/lge/launcher3/initialguide/InitialGuidePagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    :cond_7e
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 134
    invoke-static {v3}, Lcom/lge/launcher3/util/TextUtils;->getLineSpacing(Landroid/widget/TextView;)I

    move-result v2

    .line 135
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    .line 136
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    .line 137
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v8

    .line 135
    invoke-virtual {v1, v3, v2, v4, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2c
.end method

.method private setupImage(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;)V
    .registers 6

    .prologue
    .line 77
    const v0, 0x7f0e0043

    invoke-virtual {p2, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 78
    if-nez v0, :cond_c

    .line 82
    :goto_b
    return-void

    .line 81
    :cond_c
    iget-object v1, p0, Lcom/lge/launcher3/initialguide/InitialGuidePagerAdapter;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;->mImageResId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b
.end method

.method private setupTitle(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;)V
    .registers 5

    .prologue
    .line 65
    const v0, 0x7f0e0042

    invoke-virtual {p2, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    if-nez v0, :cond_c

    .line 70
    :goto_b
    return-void

    .line 69
    :cond_c
    iget v1, p1, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;->mTitleResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_b
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 4

    .prologue
    .line 147
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 148
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->getPageCount()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 42
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuidePagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    const v2, 0x7f04001a

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 42
    check-cast v0, Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;

    .line 44
    iget-object v2, p0, Lcom/lge/launcher3/initialguide/InitialGuidePagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger;->getPageInfo(I)Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;

    move-result-object v2

    .line 45
    if-eqz v0, :cond_1e

    if-nez v2, :cond_20

    :cond_1e
    move-object v0, v1

    .line 57
    :goto_1f
    return-object v0

    .line 49
    :cond_20
    invoke-direct {p0, v2, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePagerAdapter;->setupTitle(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;)V

    .line 50
    invoke-direct {p0, v2, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePagerAdapter;->setupImage(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;)V

    .line 51
    invoke-direct {p0, v2, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePagerAdapter;->setupDescriptionMain(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;)V

    .line 52
    invoke-direct {p0, v2, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePagerAdapter;->setupDescriptionSub(Lcom/lge/launcher3/initialguide/InitialGuidePageInfoMananger$PageInfo;Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;)V

    .line 54
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 55
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    goto :goto_1f
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 161
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
