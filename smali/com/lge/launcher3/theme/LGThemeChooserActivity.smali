.class public Lcom/lge/launcher3/theme/LGThemeChooserActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "LGThemeChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;
.implements Lcom/lge/launcher3/theme/LGThemeChange$ThemePackageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/theme/LGThemeChooserActivity$PackageDeleteObserver;,
        Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;
    }
.end annotation


# static fields
.field public static final MENU_THEME_DELETE:I = 0x0

.field public static final MENU_THEME_DELETE_DONE:I = 0x1

.field protected static final MSG_PACKAGE_DELETED:I = 0x64


# instance fields
.field private mActionBarDelete:Landroid/view/MenuItem;

.field private mActionBarDeleteDone:Landroid/view/MenuItem;

.field private mHandler:Landroid/os/Handler;

.field public mIsDeleteMode:Z

.field private mIsDetailActivityStarted:Z

.field private mIsRunUpdateViewPager:Z

.field private mOrientation:I

.field private mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

.field private mPreviewHeight:I

.field private mPreviewMarginTop:I

.field private mPreviewWidth:I

.field private mRunnable:Ljava/lang/Runnable;

.field private mUpdateViewPagerHandler:Landroid/os/Handler;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mWallpaperBlurredImageController:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

.field private pm:Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mIsDeleteMode:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mWallpaperBlurredImageController:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mOrientation:I

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mUpdateViewPagerHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$1;-><init>(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)V

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mRunnable:Ljava/lang/Runnable;

    .line 445
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/lge/launcher3/theme/LGThemeChooserActivity$2;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$2;-><init>(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method static synthetic access$10(Lcom/lge/launcher3/theme/LGThemeChooserActivity;Z)V
    .registers 2

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mIsRunUpdateViewPager:Z

    return-void
.end method

.method static synthetic access$11(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->pm:Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lge/launcher3/theme/LGThemeChooserActivity;Ljava/lang/CharSequence;)V
    .registers 2

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->sendAccessibilityEvent(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)Z
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mIsRunUpdateViewPager:Z

    return v0
.end method

.method static synthetic access$3(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)I
    .registers 2

    .prologue
    .line 463
    iget v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$4(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)I
    .registers 2

    .prologue
    .line 462
    iget v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$5(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)I
    .registers 2

    .prologue
    .line 464
    iget v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPreviewMarginTop:I

    return v0
.end method

.method static synthetic access$6(Lcom/lge/launcher3/theme/LGThemeChooserActivity;III)V
    .registers 4

    .prologue
    .line 210
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->updateViewPager(III)V

    return-void
.end method

.method static synthetic access$7(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)Landroid/support/v4/view/ViewPager;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lge/launcher3/theme/LGThemeChooserActivity;II)V
    .registers 3

    .prologue
    .line 502
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->setPreviewSize(II)V

    return-void
.end method

.method private getCurrentPageDescription()Ljava/lang/String;
    .registers 5

    .prologue
    .line 203
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->pm:Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->pm:Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;->getFragmentList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 204
    const v0, 0x7f0f003d

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 205
    iget-object v3, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->pm:Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;

    invoke-virtual {v3}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;->getFragmentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 204
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_3e
    return-object v0

    :cond_3f
    const-string v0, ""

    goto :goto_3e
.end method

.method private getDeleteDescription()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 187
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->isDeleteMode()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 189
    const v1, 0x7f0f010f

    invoke-virtual {p0, v1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const v1, 0x7f0f0110

    invoke-virtual {p0, v1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-direct {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :goto_39
    return-object v0

    .line 195
    :cond_3a
    const v1, 0x7f0f008f

    invoke-virtual {p0, v1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-direct {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39
.end method

.method private initActionBar()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 166
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 167
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    new-instance v1, Landroid/text/SpannableString;

    const v2, 0x7f0f009b

    invoke-virtual {p0, v2}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 172
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v4

    .line 173
    const/16 v5, 0x12

    .line 172
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 174
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    .line 176
    return-void
.end method

.method private initViewPager(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 260
    const v0, 0x7f0e0061

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 261
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, v2, v2, v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->makeGridFragment(III)Ljava/util/List;

    move-result-object v1

    .line 264
    new-instance v0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;

    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;-><init>(Lcom/lge/launcher3/theme/LGThemeChooserActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->pm:Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;

    .line 265
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->pm:Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 268
    const v0, 0x7f0e0053

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    .line 269
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    new-instance v2, Lcom/lge/launcher3/theme/LGThemeChooserActivity$4;

    invoke-direct {v2, p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$4;-><init>(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)V

    invoke-virtual {v0, v2}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->setListener(Lcom/lge/launcher3/pageindicator/PageIndicatorListener;)V

    .line 275
    invoke-direct {p0, v1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->updatePageIndicator(Ljava/util/List;)V

    .line 276
    new-instance v0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$5;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$5;-><init>(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)V

    .line 302
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 303
    if-eqz p1, :cond_5d

    .line 304
    const-string v0, "item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 305
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 306
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->setActiveMarker(I)V

    .line 308
    :cond_5d
    return-void
.end method

.method private makeGridFragment(III)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/theme/GridFragment;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeChange;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/theme/LGThemeChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeChange;->searchThemePackage()Ljava/util/ArrayList;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 241
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 243
    :goto_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 256
    return-object v8

    .line 244
    :cond_1d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v6

    .line 245
    :goto_23
    const/4 v0, 0x4

    if-lt v1, v0, :cond_3b

    .line 251
    new-array v0, v6, [Lcom/lge/launcher3/theme/GridItems;

    .line 252
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/lge/launcher3/theme/GridItems;

    .line 253
    new-instance v0, Lcom/lge/launcher3/theme/GridFragment;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/theme/GridFragment;-><init>([Lcom/lge/launcher3/theme/GridItems;Landroid/app/Activity;III)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 246
    :cond_3b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 247
    new-instance v3, Lcom/lge/launcher3/theme/GridItems;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/LGThemeInfo;

    invoke-direct {v3, v1, v0}, Lcom/lge/launcher3/theme/GridItems;-><init>(ILcom/lge/launcher3/theme/LGThemeInfo;)V

    .line 248
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_4f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23
.end method

.method private pxFromDp(F)F
    .registers 3

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private sendAccessibilityEvent(Ljava/lang/CharSequence;)V
    .registers 5

    .prologue
    .line 122
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 123
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 124
    const/16 v1, 0x20

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 125
    if-eqz p1, :cond_1d

    .line 126
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_1d
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 130
    :cond_20
    return-void
.end method

.method private setPreviewSize(II)V
    .registers 7

    .prologue
    .line 503
    if-ge p1, p2, :cond_20

    .line 504
    int-to-float v0, p2

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-direct {p0, v1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->pxFromDp(F)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPreviewHeight:I

    .line 505
    iget v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPreviewHeight:I

    int-to-double v0, v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPreviewWidth:I

    .line 506
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPreviewMarginTop:I

    .line 512
    :goto_1f
    return-void

    .line 508
    :cond_20
    int-to-float v0, p1

    const/high16 v1, 0x42fa0000    # 125.0f

    invoke-direct {p0, v1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->pxFromDp(F)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPreviewWidth:I

    .line 509
    iget v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPreviewWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPreviewHeight:I

    .line 510
    iget v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPreviewHeight:I

    sub-int v0, p2, v0

    const/high16 v1, 0x42040000    # 33.0f

    invoke-direct {p0, v1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->pxFromDp(F)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPreviewMarginTop:I

    goto :goto_1f
.end method

.method private updateDeleteButton()V
    .registers 3

    .prologue
    .line 388
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->pm:Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;->getFragmentList()Ljava/util/List;

    .line 389
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->pm:Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;->getFragmentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_14

    .line 393
    return-void

    .line 390
    :cond_14
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->pm:Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;->getFragmentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/GridFragment;

    .line 391
    invoke-virtual {v0}, Lcom/lge/launcher3/theme/GridFragment;->gridAdapterNotifyDataSetChanged()V

    .line 389
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7
.end method

.method private updatePageIndicator(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/launcher3/theme/GridFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 226
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    if-eqz v1, :cond_20

    .line 227
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->setVisibility(I)V

    .line 228
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    invoke-virtual {v1, v3}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->removeAllMarkers(Z)V

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    :goto_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_21

    .line 234
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    invoke-virtual {v0, v1, v3}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->addMarkers(Ljava/util/ArrayList;Z)V

    .line 236
    :cond_20
    return-void

    .line 232
    :cond_21
    new-instance v2, Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    invoke-direct {v2}, Lcom/android/launcher3/PageIndicator$PageMarkerResources;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method

.method private updateViewPager(III)V
    .registers 6

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->pm:Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;->getFragmentList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->pm:Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;->getFragmentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 212
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->pm:Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;->getFragmentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_36

    .line 217
    :cond_24
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->makeGridFragment(III)Ljava/util/List;

    move-result-object v0

    .line 218
    invoke-direct {p0, v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->updatePageIndicator(Ljava/util/List;)V

    .line 220
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->pm:Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;->setFragmentList(Ljava/util/List;)V

    .line 221
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->pm:Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PagerAdapter;->notifyDataSetChanged()V

    .line 222
    return-void

    .line 212
    :cond_36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/GridFragment;

    .line 213
    invoke-virtual {v0}, Lcom/lge/launcher3/theme/GridFragment;->cancelAllPreviewTask()V

    goto :goto_1e
.end method


# virtual methods
.method public deleteTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 405
    return-object p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 181
    invoke-direct {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getDeleteDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public getDetailActivityStarted()Z
    .registers 2

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mIsDetailActivityStarted:Z

    return v0
.end method

.method public isDeleteMode()Z
    .registers 2

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mIsDeleteMode:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .prologue
    const/16 v2, 0x3ec

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 426
    if-ne p1, v2, :cond_f

    if-ne p2, v0, :cond_f

    .line 427
    invoke-virtual {p0, v1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->setDetailActivityStarted(Z)V

    .line 428
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->finish()V

    .line 432
    :cond_e
    :goto_e
    return-void

    .line 429
    :cond_f
    if-ne p1, v2, :cond_e

    if-eq p2, v0, :cond_e

    .line 430
    invoke-virtual {p0, v1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->setDetailActivityStarted(Z)V

    goto :goto_e
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->setDeleteMode(Z)V

    .line 353
    :goto_a
    return-void

    .line 352
    :cond_b
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 402
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .prologue
    .line 518
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 520
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mOrientation:I

    if-eq v0, v1, :cond_23

    .line 521
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/lge/launcher3/theme/LGThemeChooserActivity$6;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$6;-><init>(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 532
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mWallpaperBlurredImageController:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    const v1, 0x7f0e0060

    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/theme/LGThemeUtils;->setBlurredBackground(Landroid/app/Activity;Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;I)V

    .line 533
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mOrientation:I

    .line 535
    :cond_23
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$2$1d5b537b(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 80
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 81
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 82
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->sendToSmartWorld()V

    .line 87
    invoke-direct {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->initActionBar()V

    .line 88
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeChange;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/theme/LGThemeChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeChange;->isChangingTheme()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 89
    const-string v0, ""

    const v1, 0x7f0f009a

    invoke-virtual {p0, v1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    .line 92
    :cond_55
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Home_ShowTheme"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->initViewPager(Landroid/os/Bundle;)V

    .line 95
    invoke-static {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mWallpaperBlurredImageController:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    .line 96
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mWallpaperBlurredImageController:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    const v1, 0x7f0e0060

    invoke-static {p0, v0, p0, v1}, Lcom/lge/launcher3/theme/LGThemeUtils;->checkBlurredBackground(Landroid/app/Activity;Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;I)V

    .line 97
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mOrientation:I

    .line 99
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeChange;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/theme/LGThemeChange;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/theme/LGThemeChange;->registerThemePackageChangeListener(Lcom/lge/launcher3/theme/LGThemeChange$ThemePackageChangeListener;)V

    .line 100
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 312
    const v0, 0x7f0f008f

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mActionBarDelete:Landroid/view/MenuItem;

    .line 313
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mActionBarDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 314
    const v0, 0x7f0f0110

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mActionBarDeleteDone:Landroid/view/MenuItem;

    .line 315
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mActionBarDeleteDone:Landroid/view/MenuItem;

    const v1, 0x7f020076

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 316
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mActionBarDeleteDone:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 318
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

.method public onCurrentThemePackageRemoved(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 539
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 540
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 436
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 437
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeChange;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/theme/LGThemeChange;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/theme/LGThemeChange;->unregisterThemePackageChangeListener(Lcom/lge/launcher3/theme/LGThemeChange$ThemePackageChangeListener;)V

    .line 438
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 439
    iput-object v2, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mPageIndicator:Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    .line 440
    iput-object v2, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 442
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mWallpaperBlurredImageController:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    invoke-static {p0, v0, p0}, Lcom/lge/launcher3/theme/LGThemeUtils;->destroyBlurredBackground(Landroid/app/Activity;Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;)V

    .line 443
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 324
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 333
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_c
    return v1

    .line 327
    :pswitch_d
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    :goto_14
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->setDeleteMode(Z)V

    .line 328
    invoke-direct {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getDeleteDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->sendAccessibilityEvent(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_1f
    move v0, v1

    .line 327
    goto :goto_14

    .line 324
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->setActionBarDelete()V

    .line 340
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mActionBarDeleteDone:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 342
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 482
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 483
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 104
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mIsRunUpdateViewPager:Z

    .line 106
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/lge/launcher3/theme/LGThemeChooserActivity$3;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$3;-><init>(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 117
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mUpdateViewPagerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 475
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 476
    const-string v0, "item"

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 478
    return-void
.end method

.method public onWallpaperBlurredImageChanged(I)V
    .registers 4

    .prologue
    .line 495
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mWallpaperBlurredImageController:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    const v1, 0x7f0e0060

    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/theme/LGThemeUtils;->setBlurredBackground(Landroid/app/Activity;Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;I)V

    .line 496
    return-void
.end method

.method public onWallpaperChanged()V
    .registers 1

    .prologue
    .line 489
    return-void
.end method

.method public sendToSmartWorld()V
    .registers 4

    .prologue
    .line 409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.lgworld.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    const-string v1, "com.lge.lgworld"

    const-string v2, "com.lge.lgworld.LGReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string v1, "lgworld.receiver"

    const-string v2, "LGSW_GET_PREVIEW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string v1, "caller"

    const-string v2, "com.lge.launcher2.intent.action.ENTER_THEME"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 414
    return-void
.end method

.method public setActionBarDelete()V
    .registers 3

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeChange;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/theme/LGThemeChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeChange;->countDownloadTheme()I

    move-result v0

    if-nez v0, :cond_1d

    .line 357
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mActionBarDelete:Landroid/view/MenuItem;

    const v1, 0x7f020075

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 358
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mActionBarDelete:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 366
    :cond_1c
    :goto_1c
    return-void

    .line 361
    :cond_1d
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->isDeleteMode()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 362
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mActionBarDelete:Landroid/view/MenuItem;

    const v1, 0x7f020074

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 363
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mActionBarDelete:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1c
.end method

.method public setDeleteMode(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 369
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mActionBarDelete:Landroid/view/MenuItem;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mActionBarDeleteDone:Landroid/view/MenuItem;

    if-nez v0, :cond_b

    .line 385
    :cond_a
    :goto_a
    return-void

    .line 373
    :cond_b
    iput-boolean p1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mIsDeleteMode:Z

    .line 374
    invoke-direct {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->updateDeleteButton()V

    .line 376
    if-eqz p1, :cond_22

    .line 377
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mActionBarDeleteDone:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 378
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mActionBarDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 379
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mActionBarDeleteDone:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_a

    .line 381
    :cond_22
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->setActionBarDelete()V

    .line 382
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mActionBarDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 383
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mActionBarDeleteDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_a
.end method

.method public setDetailActivityStarted(Z)V
    .registers 2

    .prologue
    .line 421
    iput-boolean p1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->mIsDetailActivityStarted:Z

    .line 422
    return-void
.end method
