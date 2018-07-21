.class public Lcom/lge/launcher3/theme/LGThemeDetailActivity;
.super Landroid/app/Activity;
.source "LGThemeDetailActivity.java"

# interfaces
.implements Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/theme/LGThemeDetailActivity$PackageDeleteObserver;
    }
.end annotation


# static fields
.field public static final MENU_THEME_DELETE:I


# instance fields
.field private mActionBarDelete:Landroid/view/MenuItem;

.field private mOrientation:I

.field private mSelectThemeName:Ljava/lang/String;

.field private mThemeImageView:Landroid/widget/ImageView;

.field private mWallpaperBlurredImageController:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mWallpaperBlurredImageController:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mOrientation:I

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/theme/LGThemeDetailActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->changeTheme(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/lge/launcher3/theme/LGThemeDetailActivity;)V
    .registers 1

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->setPreviewImage()V

    return-void
.end method

.method static synthetic access$2(Lcom/lge/launcher3/theme/LGThemeDetailActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mThemeImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private changeTheme(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 242
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeChange;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/theme/LGThemeChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeChange;->getCurrentTheme()Ljava/lang/String;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_11

    if-nez p1, :cond_12

    .line 254
    :cond_11
    :goto_11
    return-void

    .line 247
    :cond_12
    invoke-static {p0, v3}, Lcom/lge/launcher3/memory/MemoryUtils;->hasAvailableFileSystemMemory(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 251
    const-string v0, ""

    const v1, 0x7f0f009a

    invoke-virtual {p0, v1}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 252
    const/4 v2, 0x0

    .line 251
    invoke-static {p0, v0, v1, v3, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    .line 253
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeChange;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/theme/LGThemeChange;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/theme/LGThemeChange;->changeTheme(Ljava/lang/String;)V

    goto :goto_11
.end method

.method private getDetailThemeInfo()Lcom/lge/launcher3/theme/LGThemeInfo;
    .registers 3

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeChange;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/theme/LGThemeChange;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mSelectThemeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/theme/LGThemeChange;->getThemeInfo(Ljava/lang/String;)Lcom/lge/launcher3/theme/LGThemeInfo;

    move-result-object v0

    .line 150
    if-nez v0, :cond_2b

    .line 151
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeChange;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/theme/LGThemeChange;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mSelectThemeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/theme/LGThemeChange;->readThemeInfo(Ljava/lang/String;)Lcom/lge/launcher3/theme/LGThemeInfo;

    .line 152
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeChange;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/theme/LGThemeChange;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mSelectThemeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/theme/LGThemeChange;->getThemeInfo(Ljava/lang/String;)Lcom/lge/launcher3/theme/LGThemeInfo;

    move-result-object v0

    .line 154
    :cond_2b
    return-object v0
.end method

.method private loadingPreViewImage()V
    .registers 3

    .prologue
    .line 268
    const v0, 0x7f0e0063

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mThemeImageView:Landroid/widget/ImageView;

    .line 269
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mThemeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/lge/launcher3/theme/LGThemeDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity$6;-><init>(Lcom/lge/launcher3/theme/LGThemeDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 277
    return-void
.end method

.method private sendAccessibilityEvent(Ljava/lang/CharSequence;)V
    .registers 5

    .prologue
    .line 100
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 101
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 103
    const/16 v1, 0x20

    .line 102
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 104
    if-eqz p1, :cond_1d

    .line 105
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_1d
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 109
    :cond_20
    return-void
.end method

.method private setPreviewImage()V
    .registers 7

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getDetailThemeInfo()Lcom/lge/launcher3/theme/LGThemeInfo;

    move-result-object v0

    .line 295
    if-nez v0, :cond_7

    .line 308
    :cond_6
    :goto_6
    return-void

    .line 300
    :cond_7
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mThemeImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 301
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mThemeImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    .line 300
    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/theme/LGThemeInfo;->makeThemePreview(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_6

    .line 307
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mThemeImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6
.end method

.method private setupActionBar()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 113
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 114
    sget v1, Lcom/lge/R$drawable;->ic_ab_back_material:I

    invoke-virtual {p0, v1}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_1e

    .line 116
    const-string v2, "#ffffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 117
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :cond_1e
    invoke-direct {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getDetailThemeInfo()Lcom/lge/launcher3/theme/LGThemeInfo;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_47

    .line 122
    new-instance v2, Landroid/text/SpannableString;

    iget-object v1, v1, Lcom/lge/launcher3/theme/LGThemeInfo;->mLabel:Ljava/lang/String;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 123
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v3, "#ffffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v4

    .line 124
    const/16 v5, 0x12

    .line 123
    invoke-interface {v2, v1, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 125
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    .line 126
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    :cond_47
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    return-void
.end method

.method private setupView()V
    .registers 3

    .prologue
    .line 180
    const v0, 0x7f0e0065

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 181
    new-instance v1, Lcom/lge/launcher3/theme/LGThemeDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity$1;-><init>(Lcom/lge/launcher3/theme/LGThemeDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v0, 0x7f0e0064

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 190
    new-instance v1, Lcom/lge/launcher3/theme/LGThemeDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity$2;-><init>(Lcom/lge/launcher3/theme/LGThemeDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public finishDetailActivity()V
    .registers 2

    .prologue
    .line 257
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->setResult(I)V

    .line 258
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->finish()V

    .line 259
    return-void
.end method

.method public getDescrition()Ljava/lang/CharSequence;
    .registers 4

    .prologue
    const v2, 0x7f0f0111

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 75
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const v1, 0x7f0f008f

    invoke-virtual {p0, v1}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const v1, 0x7f0f009c

    invoke-virtual {p0, v1}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const v1, 0x7f0f0029

    invoke-virtual {p0, v1}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0, v2}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const v1, 0x7f0f0093

    invoke-virtual {p0, v1}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0, v2}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    return-object v0
.end method

.method public getSelectThemeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mSelectThemeName:Ljava/lang/String;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .prologue
    .line 314
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 316
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mOrientation:I

    if-eq v0, v1, :cond_23

    .line 317
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mThemeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/lge/launcher3/theme/LGThemeDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity$7;-><init>(Lcom/lge/launcher3/theme/LGThemeDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 325
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mWallpaperBlurredImageController:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    const v1, 0x7f0e0062

    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/theme/LGThemeUtils;->setBlurredBackground(Landroid/app/Activity;Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;I)V

    .line 326
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mOrientation:I

    .line 328
    :cond_23
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$2$1d5b537b(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 50
    const/16 v1, 0x700

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 53
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 54
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 55
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    const-string v1, "selectTheme"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mSelectThemeName:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mSelectThemeName:Ljava/lang/String;

    if-nez v0, :cond_41

    .line 60
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->finish()V

    .line 63
    :cond_41
    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->setContentView(I)V

    .line 64
    invoke-direct {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->setupView()V

    .line 65
    invoke-direct {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->setupActionBar()V

    .line 66
    invoke-direct {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->loadingPreViewImage()V

    .line 68
    invoke-static {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mWallpaperBlurredImageController:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    .line 69
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mWallpaperBlurredImageController:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    const v1, 0x7f0e0062

    invoke-static {p0, v0, p0, v1}, Lcom/lge/launcher3/theme/LGThemeUtils;->checkBlurredBackground(Landroid/app/Activity;Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;I)V

    .line 70
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mOrientation:I

    .line 71
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-direct {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getDetailThemeInfo()Lcom/lge/launcher3/theme/LGThemeInfo;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_23

    .line 137
    iget-boolean v0, v0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIsSystem:Z

    if-nez v0, :cond_23

    .line 138
    const/4 v0, 0x1

    const v1, 0x7f0f008f

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mActionBarDelete:Landroid/view/MenuItem;

    .line 139
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mActionBarDelete:Landroid/view/MenuItem;

    const v1, 0x7f020074

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 140
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mActionBarDelete:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 145
    :cond_23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 264
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mWallpaperBlurredImageController:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    invoke-static {p0, v0, p0}, Lcom/lge/launcher3/theme/LGThemeUtils;->destroyBlurredBackground(Landroid/app/Activity;Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController$OnWallpaperChangeListener;)V

    .line 265
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .prologue
    .line 161
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_1a

    .line 172
    :goto_7
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 163
    :sswitch_c
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getSelectThemeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->showThemeDetailDeleteDialog(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x1

    goto :goto_b

    .line 166
    :sswitch_15
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->onBackPressed()V

    goto :goto_7

    .line 161
    nop

    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_c
        0x102002c -> :sswitch_15
    .end sparse-switch
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 91
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getDescrition()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->sendAccessibilityEvent(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method public onWallpaperBlurredImageChanged(I)V
    .registers 4

    .prologue
    .line 289
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->mWallpaperBlurredImageController:Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    const v1, 0x7f0e0062

    invoke-static {p0, v0, v1}, Lcom/lge/launcher3/theme/LGThemeUtils;->setBlurredBackground(Landroid/app/Activity;Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;I)V

    .line 290
    return-void
.end method

.method public onWallpaperChanged()V
    .registers 1

    .prologue
    .line 283
    return-void
.end method

.method protected showThemeDetailDeleteDialog(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 199
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    const v1, 0x7f0f0094

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 201
    const v1, 0x7f0f0095

    new-instance v2, Lcom/lge/launcher3/theme/LGThemeDetailActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/lge/launcher3/theme/LGThemeDetailActivity$3;-><init>(Lcom/lge/launcher3/theme/LGThemeDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    const v1, 0x7f0f0096

    new-instance v2, Lcom/lge/launcher3/theme/LGThemeDetailActivity$4;

    invoke-direct {v2, p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity$4;-><init>(Lcom/lge/launcher3/theme/LGThemeDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 224
    new-instance v1, Lcom/lge/launcher3/theme/LGThemeDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity$5;-><init>(Lcom/lge/launcher3/theme/LGThemeDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 233
    return-void
.end method
