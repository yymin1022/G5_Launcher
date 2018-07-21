.class public Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;
.super Landroid/widget/LinearLayout;
.source "SBCategoryLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$CompareWithNoti;
    }
.end annotation


# instance fields
.field private mBottomPadding:I

.field private mCollapseAniDuration:I

.field private mConfigurationReceiver:Landroid/content/BroadcastReceiver;

.field private mLastUpdateTimeInCL:J

.field private mNavigationBarPadding:I

.field private mProviderTitleHeight:I

.field private sCurOrder:I

.field private sProviderBgColor:[I

.field private sProviderTitleColor:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mLastUpdateTimeInCL:J

    .line 51
    iput v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mBottomPadding:I

    .line 54
    iput v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->sCurOrder:I

    .line 55
    iput v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mNavigationBarPadding:I

    .line 56
    const/16 v0, 0x12c

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mCollapseAniDuration:I

    .line 57
    iput v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mProviderTitleHeight:I

    .line 314
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$1;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;)V

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mConfigurationReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    const v1, 0x7f0a000b

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->sProviderBgColor:[I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    const v1, 0x7f0a000c

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->sProviderTitleColor:[I

    .line 69
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/WindowUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mNavigationBarPadding:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mProviderTitleHeight:I

    .line 72
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$2;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$2;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;)V

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 82
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->setShowDividers(I)V

    .line 83
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 84
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/launcher3/util/WindowUtils;->getOneDPToPixel(Landroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->setClipToPadding(Z)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->enableChangingTransition(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;Ljava/lang/String;)Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;
    .registers 3

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->findViewByComponentName(Ljava/lang/String;)Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;II)V
    .registers 3

    .prologue
    .line 194
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->setBottomForm(II)V

    return-void
.end method

.method static synthetic access$2(Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;)I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mBottomPadding:I

    return v0
.end method

.method private findIndexByInfo(Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)I
    .registers 5

    .prologue
    .line 412
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_a

    .line 420
    const/4 v1, -0x1

    :cond_9
    return v1

    .line 413
    :cond_a
    iget-object v0, p1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 414
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 415
    invoke-virtual {p0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    iget-object v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 416
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 416
    if-nez v0, :cond_9

    .line 412
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method private findViewByComponentName(Ljava/lang/String;)Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 335
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 336
    if-nez v3, :cond_9

    move-object v0, v2

    .line 346
    :cond_8
    :goto_8
    return-object v0

    .line 339
    :cond_9
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_13

    move-object v0, v2

    .line 346
    goto :goto_8

    .line 340
    :cond_13
    invoke-virtual {p0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    .line 341
    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getProviderInfo()Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    move-result-object v4

    .line 342
    invoke-virtual {v4, v3}, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->isSameComponent(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 339
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b
.end method

.method private getCategoryRealHeight()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 191
    :goto_7
    return v0

    .line 189
    :cond_8
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 190
    invoke-virtual {p0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, v1, v0

    .line 191
    goto :goto_7
.end method

.method private registerConfigurationReceiver(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 306
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mConfigurationReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 307
    const-string v2, "com.lge.launcher2.smartbulletin.configuration.color"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 308
    return-void
.end method

.method private setBottomForm(II)V
    .registers 7

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildCount()I

    move-result v0

    .line 196
    if-lez v0, :cond_8

    if-ne p1, p2, :cond_9

    .line 220
    :cond_8
    :goto_8
    return-void

    .line 199
    :cond_9
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 201
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->calculateHeightPerCategory()I

    move-result v1

    .line 202
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getCategoryRealHeight()I

    move-result v2

    .line 203
    sub-int/2addr v1, v2

    .line 204
    if-ltz v2, :cond_8

    .line 205
    sub-int v2, p1, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mBottomPadding:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-eq v2, v3, :cond_8

    .line 208
    const v2, 0x7f0e000e

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 209
    if-gez v1, :cond_46

    .line 210
    iget v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mNavigationBarPadding:I

    .line 215
    :goto_38
    if-eqz v0, :cond_8

    .line 216
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 217
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iput v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mBottomPadding:I

    goto :goto_8

    .line 212
    :cond_46
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_38
.end method

.method private sortProviders()V
    .registers 6

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->getAllProvider(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 389
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_f
    if-gez v1, :cond_1c

    .line 395
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 409
    return-void

    .line 390
    :cond_1c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    iget-boolean v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mIsEnabled:Z

    if-nez v0, :cond_29

    .line 391
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 389
    :cond_29
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    .line 395
    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 396
    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->findIndexByInfo(Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)I

    move-result v2

    .line 397
    iget v3, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mPostionY:I

    if-eq v2, v3, :cond_15

    .line 398
    invoke-virtual {p0, v2}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 399
    if-eqz v2, :cond_15

    .line 400
    invoke-virtual {p0, v2}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 401
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildCount()I

    move-result v3

    iget v4, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mPostionY:I

    if-ge v3, v4, :cond_50

    .line 402
    invoke-virtual {p0, v2}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->addView(Landroid/view/View;)V

    goto :goto_15

    .line 404
    :cond_50
    iget v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mPostionY:I

    invoke-virtual {p0, v2, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->addView(Landroid/view/View;I)V

    goto :goto_15
.end method

.method private unregisteConfigurationReceiver(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mConfigurationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 312
    return-void
.end method


# virtual methods
.method public calculateHeightPerCategory()I
    .registers 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 96
    return v0
.end method

.method public enableChangingTransition(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x4

    .line 285
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 287
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 291
    :cond_c
    :goto_c
    return-void

    .line 288
    :cond_d
    if-eqz v0, :cond_c

    if-nez p1, :cond_c

    .line 289
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    goto :goto_c
.end method

.method public getLastRealBottom()I
    .registers 4

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 381
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 382
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e000e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 381
    sub-int v0, v1, v0

    .line 383
    iget v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mBottomPadding:I

    .line 381
    add-int/2addr v0, v1

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->registerConfigurationReceiver(Landroid/content/Context;)V

    .line 302
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 303
    return-void
.end method

.method public onCategoryScrollChange(II)V
    .registers 8

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildCount()I

    move-result v3

    .line 353
    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-lt v2, v3, :cond_9

    .line 366
    return-void

    .line 354
    :cond_9
    invoke-virtual {p0, v2}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 355
    instance-of v0, v1, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    if-eqz v0, :cond_28

    move-object v0, v1

    .line 356
    check-cast v0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    .line 357
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, p1

    .line 358
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v1, p1

    .line 359
    if-lt v4, p2, :cond_2c

    .line 360
    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getSBScrollAnimation()Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->initAnimator(I)V

    .line 353
    :cond_28
    :goto_28
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 361
    :cond_2c
    if-ge v4, p2, :cond_28

    if-le v1, p2, :cond_28

    .line 362
    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getSBScrollAnimation()Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->startAniamtion()V

    goto :goto_28
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 295
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 296
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->unregisteConfigurationReceiver(Landroid/content/Context;)V

    .line 297
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .prologue
    .line 280
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 281
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->enableChangingTransition(Z)V

    .line 282
    return-void
.end method

.method public orderProvidersByNoti(J)Z
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 425
    invoke-direct {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->sortProviders()V

    .line 426
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    move v4, v3

    .line 427
    :goto_b
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildCount()I

    move-result v0

    if-lt v2, v0, :cond_1f

    .line 443
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildCount()I

    move-result v2

    move v1, v3

    .line 444
    :goto_16
    if-lt v1, v2, :cond_46

    .line 453
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 454
    if-nez v0, :cond_64

    .line 464
    :goto_1e
    return v3

    .line 428
    :cond_1f
    invoke-virtual {p0, v2}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 429
    instance-of v0, v1, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    if-nez v0, :cond_2d

    move v1, v4

    .line 427
    :goto_28
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_b

    :cond_2d
    move-object v0, v1

    .line 432
    check-cast v0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    .line 433
    if-eqz v0, :cond_87

    .line 434
    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->hasNotiView()Z

    move-result v6

    if-eqz v6, :cond_87

    .line 435
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getNotiTime()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_87

    .line 437
    const/4 v4, 0x1

    move v1, v4

    goto :goto_28

    .line 445
    :cond_46
    invoke-virtual {p0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 446
    const v6, 0x7f0e000e

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 447
    if-eqz v0, :cond_60

    .line 448
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 449
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    :cond_60
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 458
    :cond_64
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$CompareWithNoti;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$CompareWithNoti;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 459
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_70
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 463
    iput-wide p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mLastUpdateTimeInCL:J

    move v3, v4

    .line 464
    goto :goto_1e

    .line 459
    :cond_7a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 460
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->removeView(Landroid/view/View;)V

    .line 461
    invoke-virtual {p0, v0, v3}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->addView(Landroid/view/View;I)V

    goto :goto_70

    :cond_87
    move v1, v4

    goto :goto_28
.end method

.method public processCollapse()Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 139
    invoke-virtual {p0, v4}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->enableChangingTransition(Z)V

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildCount()I

    move-result v5

    .line 143
    if-ne v5, v2, :cond_12

    move-object v0, v1

    .line 180
    :goto_11
    return-object v0

    :cond_12
    move v3, v4

    .line 147
    :goto_13
    if-lt v3, v5, :cond_5e

    .line 155
    invoke-virtual {p0, v4}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    move v0, v2

    .line 156
    :goto_24
    if-lt v0, v5, :cond_76

    .line 166
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mBottomPadding:I

    sub-int/2addr v2, v3

    .line 168
    iget v3, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mProviderTitleHeight:I

    add-int/lit8 v4, v5, -0x1

    mul-int/2addr v3, v4

    .line 169
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->calculateHeightPerCategory()I

    move-result v4

    sub-int v2, v4, v2

    sub-int/2addr v2, v3

    .line 170
    const v3, 0x7f0e000e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 171
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 172
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$4;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$4;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;)V

    .line 178
    iget v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mCollapseAniDuration:I

    int-to-long v2, v2

    .line 173
    invoke-virtual {p0, v0, v2, v3}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object v0, v1

    .line 180
    goto :goto_11

    .line 148
    :cond_5e
    invoke-virtual {p0, v3}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 151
    const v6, 0x7f0e00da

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 150
    check-cast v0, Landroid/widget/ImageButton;

    .line 152
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 147
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_13

    .line 157
    :cond_76
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 158
    mul-int/lit8 v7, v0, 0x1e

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationZ(F)V

    .line 160
    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [F

    .line 161
    invoke-virtual {p0, v4}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    mul-int v10, v3, v0

    add-int/2addr v9, v10

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    aput v9, v8, v4

    .line 159
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 162
    iget v7, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mCollapseAniDuration:I

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 163
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_24
.end method

.method public processExpand()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 100
    invoke-virtual {p0, v3}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->enableChangingTransition(Z)V

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildCount()I

    move-result v4

    .line 104
    if-ne v4, v2, :cond_13

    move-object v0, v1

    .line 135
    :goto_12
    return-object v0

    :cond_13
    move v0, v2

    .line 108
    :goto_14
    if-lt v0, v4, :cond_37

    move v2, v3

    .line 117
    :goto_17
    if-lt v2, v4, :cond_58

    .line 124
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 125
    const v2, 0x7f0e000e

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 126
    new-instance v2, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$3;

    invoke-direct {v2, p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$3;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;Landroid/widget/LinearLayout;)V

    .line 133
    iget v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mCollapseAniDuration:I

    int-to-long v4, v0

    .line 126
    invoke-virtual {p0, v2, v4, v5}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object v0, v1

    .line 135
    goto :goto_12

    .line 109
    :cond_37
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 110
    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationZ(F)V

    .line 112
    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [F

    aput v8, v7, v3

    .line 111
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 113
    iget v6, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mCollapseAniDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 114
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 118
    :cond_58
    invoke-virtual {p0, v2}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 120
    const v5, 0x7f0e00da

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    check-cast v0, Landroid/widget/ImageButton;

    .line 121
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 117
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_17
.end method

.method public refreshProviderLayout()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildCount()I

    move-result v4

    .line 225
    if-nez v4, :cond_8

    .line 251
    :cond_7
    :goto_7
    return-void

    :cond_8
    move v2, v3

    .line 229
    :goto_9
    if-lt v2, v4, :cond_33

    .line 238
    iput v3, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->sCurOrder:I

    .line 240
    invoke-virtual {p0, v3}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 241
    const v1, 0x7f0e00da

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 242
    const/4 v1, 0x1

    if-ne v4, v1, :cond_54

    .line 243
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 248
    :goto_23
    iget-wide v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mLastUpdateTimeInCL:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    .line 249
    iget-wide v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->mLastUpdateTimeInCL:J

    invoke-virtual {p0, v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->orderProvidersByNoti(J)Z

    goto :goto_7

    .line 230
    :cond_33
    invoke-virtual {p0, v2}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 231
    const v1, 0x7f0e000e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 232
    if-eqz v1, :cond_4d

    .line 233
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 234
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    :cond_4d
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->updateProviderBgColor(Landroid/view/View;)V

    .line 229
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    .line 245
    :cond_54
    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_23
.end method

.method public resetScrollAnimation()V
    .registers 4

    .prologue
    .line 369
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_9

    .line 377
    return-void

    .line 370
    :cond_9
    invoke-virtual {p0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 371
    instance-of v2, v0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    if-nez v2, :cond_15

    .line 369
    :goto_11
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 374
    :cond_15
    check-cast v0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    .line 375
    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getSBScrollAnimation()Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;->resetAniamtion()V

    goto :goto_11
.end method

.method public updateProviderBgColor(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 255
    check-cast p1, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    .line 256
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->sProviderBgColor:[I

    array-length v0, v0

    .line 257
    iget v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->sCurOrder:I

    rem-int/2addr v1, v0

    .line 258
    invoke-virtual {p1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getCustomProviderBgColor()Z

    move-result v2

    .line 259
    invoke-virtual {p1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getCustomProviderTitleColor()Z

    move-result v3

    .line 261
    if-nez v2, :cond_19

    .line 262
    iget-object v4, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->sProviderBgColor:[I

    aget v4, v4, v1

    invoke-virtual {p1, v4}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->setProviderBgColor(I)V

    .line 265
    :cond_19
    if-nez v3, :cond_22

    .line 266
    iget-object v4, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->sProviderTitleColor:[I

    aget v1, v4, v1

    invoke-virtual {p1, v1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->setProviderTitleColor(I)V

    .line 269
    :cond_22
    if-eqz v2, :cond_26

    if-nez v3, :cond_33

    .line 270
    :cond_26
    iget v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->sCurOrder:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->sCurOrder:I

    .line 271
    iget v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->sCurOrder:I

    if-lt v1, v0, :cond_33

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->sCurOrder:I

    .line 275
    :cond_33
    return-void
.end method
