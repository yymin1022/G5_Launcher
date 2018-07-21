.class public Lcom/lge/launcher3/help/HelpPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "HelpPageAdapter.java"


# instance fields
.field private mInfo:Lcom/lge/launcher3/help/HelpItemInfo;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/help/HelpItemInfo;)V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/lge/launcher3/help/HelpPageAdapter;->mInfo:Lcom/lge/launcher3/help/HelpItemInfo;

    .line 29
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 4

    .prologue
    .line 111
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 112
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .registers 2

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 131
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpPageAdapter;->mInfo:Lcom/lge/launcher3/help/HelpItemInfo;

    invoke-virtual {v0}, Lcom/lge/launcher3/help/HelpItemInfo;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 104
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .registers 16

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 36
    if-nez v7, :cond_a

    move-object v0, v4

    .line 99
    :goto_9
    return-object v0

    .line 40
    :cond_a
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040016

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 41
    if-nez v5, :cond_19

    move-object v0, v4

    .line 42
    goto :goto_9

    .line 45
    :cond_19
    iget-object v0, p0, Lcom/lge/launcher3/help/HelpPageAdapter;->mInfo:Lcom/lge/launcher3/help/HelpItemInfo;

    invoke-virtual {v0, p2}, Lcom/lge/launcher3/help/HelpItemInfo;->createItem(I)Lcom/lge/launcher3/help/HelpItem;

    move-result-object v2

    .line 47
    const v0, 0x7f0e0042

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    if-eqz v0, :cond_2f

    .line 49
    iget v3, v2, Lcom/lge/launcher3/help/HelpItem;->mTitleResId:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 52
    :cond_2f
    const v0, 0x7f0e0043

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 53
    if-eqz v0, :cond_43

    .line 54
    iget v3, v2, Lcom/lge/launcher3/help/HelpItem;->mImageResId:I

    invoke-virtual {v7, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    :cond_43
    const v0, 0x7f0e0044

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    if-eqz v0, :cond_69

    .line 59
    iget v3, v2, Lcom/lge/launcher3/help/HelpItem;->mDescResId:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 61
    iget-object v0, v2, Lcom/lge/launcher3/help/HelpItem;->mDescSubResId:[I

    if-eqz v0, :cond_69

    .line 62
    const v0, 0x7f0e0045

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    iget-object v8, v2, Lcom/lge/launcher3/help/HelpItem;->mDescSubResId:[I

    array-length v9, v8

    move v6, v1

    :goto_67
    if-lt v6, v9, :cond_74

    .line 96
    :cond_69
    const/4 v0, 0x2

    invoke-virtual {v5, v0, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 98
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v5}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    move-object v0, v5

    .line 99
    goto :goto_9

    .line 65
    :cond_74
    aget v10, v8, v6

    .line 66
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 67
    const v2, 0x7f04000c

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    check-cast v1, Landroid/widget/LinearLayout;

    .line 69
    if-nez v1, :cond_89

    .line 65
    :cond_85
    :goto_85
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_67

    .line 74
    :cond_89
    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 73
    check-cast v2, Landroid/widget/TextView;

    .line 76
    const v3, 0x7f0e0025

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 75
    check-cast v3, Landroid/widget/TextView;

    .line 78
    if-eqz v2, :cond_85

    if-eqz v3, :cond_85

    .line 83
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "  "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    .line 87
    invoke-static {v3}, Lcom/lge/launcher3/util/TextUtils;->getLineSpacing(Landroid/widget/TextView;)I

    move-result v2

    .line 88
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    .line 89
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v10

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v11

    .line 88
    invoke-virtual {v1, v3, v2, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_85
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 125
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
