.class public Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "WidgetsViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;,
        Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$GroupWidgetSizeHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GROUP_WIDGET_SIZE_HOLDER:I = 0x7f0e000b

.field private static final MAXPREVIEW_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCol:I

.field private mIconClickListener:Landroid/view/View$OnClickListener;

.field private mIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsRtL:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mRow:I

.field private mUninstallBtn:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;

.field private mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

.field private mWidgetsModel:Lcom/lge/launcher3/widgettray/WidgetsModelExtension;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/Launcher;)V
    .registers 7

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mIsRtL:Z

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 68
    iput-object p4, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 70
    iput-object p2, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    .line 71
    iput-object p3, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 73
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    const v1, 0x7f0c0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mRow:I

    .line 76
    const v1, 0x7f0c0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mCol:I

    .line 78
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mIsRtL:Z

    .line 79
    return-void
.end method

.method private checkGroupWidget(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 209
    instance-of v0, p1, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;

    if-nez v0, :cond_a

    .line 210
    instance-of v0, p1, Lcom/lge/launcher3/widgettray/GroupResolveInfo;

    if-nez v0, :cond_a

    .line 209
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private compareItems(Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 399
    iget-object v2, p1, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->componentName:Landroid/content/ComponentName;

    if-nez v2, :cond_b

    iget-object v2, p2, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->componentName:Landroid/content/ComponentName;

    if-nez v2, :cond_b

    .line 414
    :cond_a
    :goto_a
    return v0

    .line 403
    :cond_b
    iget-object v2, p1, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->componentName:Landroid/content/ComponentName;

    if-nez v2, :cond_13

    iget-object v2, p2, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->componentName:Landroid/content/ComponentName;

    if-nez v2, :cond_25

    .line 404
    :cond_13
    iget-object v2, p1, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_1b

    iget-object v2, p2, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_25

    .line 405
    :cond_1b
    iget-object v2, p1, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->componentName:Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_25
    move v0, v1

    .line 406
    goto :goto_a

    .line 409
    :cond_27
    iget-object v2, p1, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->componentName:Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 410
    iget v2, p1, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->spanX:I

    iget v3, p2, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->spanX:I

    if-ne v2, v3, :cond_43

    iget v2, p1, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->spanY:I

    iget v3, p2, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->spanY:I

    if-ne v2, v3, :cond_43

    .line 411
    :cond_3d
    iget v2, p1, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->size:I

    iget v3, p2, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->size:I

    if-eq v2, v3, :cond_a

    :cond_43
    move v0, v1

    .line 412
    goto :goto_a
.end method

.method private getWidgetPreviewLoader()Lcom/android/launcher3/WidgetPreviewLoader;
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    if-nez v0, :cond_e

    .line 443
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    .line 445
    :cond_e
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    return-object v0
.end method

.method private hasDiffrentData(Ljava/lang/Object;)Z
    .registers 14

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 328
    instance-of v0, p1, Landroid/widget/GridLayout;

    if-nez v0, :cond_8

    move v0, v3

    .line 395
    :goto_7
    return v0

    .line 331
    :cond_8
    check-cast p1, Landroid/widget/GridLayout;

    .line 333
    invoke-virtual {p1}, Landroid/widget/GridLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 334
    const/4 v0, -0x1

    if-ne v6, v0, :cond_19

    move v0, v3

    .line 335
    goto :goto_7

    .line 338
    :cond_19
    iget v0, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mRow:I

    .line 339
    iget v1, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mCol:I

    .line 340
    mul-int v7, v0, v1

    move v5, v3

    .line 342
    :goto_20
    if-lt v5, v7, :cond_3e

    .line 394
    sget-object v0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasDiffrentData position:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 395
    goto :goto_7

    .line 343
    :cond_3e
    new-instance v8, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;

    invoke-direct {v8, p0}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;-><init>(Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;)V

    .line 344
    new-instance v9, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;

    invoke-direct {v9, p0}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;-><init>(Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;)V

    .line 346
    invoke-virtual {p1, v5}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetCell;

    .line 347
    if-eqz v0, :cond_7e

    .line 348
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 349
    iget-object v1, v0, Lcom/android/launcher3/widget/WidgetCell;->mInfo:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->checkGroupWidget(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 350
    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetCell;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$GroupWidgetSizeHolder;

    .line 351
    invoke-static {v1}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$GroupWidgetSizeHolder;->access$1(Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$GroupWidgetSizeHolder;)I

    move-result v1

    iput v1, v8, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->size:I

    .line 355
    :goto_6b
    instance-of v1, v2, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v1, :cond_7e

    move-object v1, v2

    .line 356
    check-cast v1, Lcom/android/launcher3/PendingAddItemInfo;

    .line 357
    iget-object v2, v1, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iput-object v2, v8, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->componentName:Landroid/content/ComponentName;

    .line 358
    iget v2, v1, Lcom/android/launcher3/PendingAddItemInfo;->spanX:I

    iput v2, v8, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->spanX:I

    .line 359
    iget v1, v1, Lcom/android/launcher3/PendingAddItemInfo;->spanY:I

    iput v1, v8, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->spanY:I

    .line 363
    :cond_7e
    mul-int v1, v6, v7

    add-int/2addr v1, v5

    .line 364
    iget-object v2, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mWidgetsModel:Lcom/lge/launcher3/widgettray/WidgetsModelExtension;

    invoke-virtual {v2}, Lcom/lge/launcher3/widgettray/WidgetsModelExtension;->getPackageSize()I

    move-result v2

    if-ge v1, v2, :cond_be

    .line 365
    iget-object v2, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mWidgetsModel:Lcom/lge/launcher3/widgettray/WidgetsModelExtension;

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/widgettray/WidgetsModelExtension;->getSortedWidgets(I)Ljava/util/List;

    move-result-object v2

    .line 366
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 367
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v9, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->size:I

    .line 369
    instance-of v2, v1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v2, :cond_e4

    .line 370
    check-cast v1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 371
    new-instance v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v10, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v11, 0x0

    invoke-direct {v2, v10, v1, v11}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Landroid/os/Parcelable;)V

    .line 372
    iget-object v10, v1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v10, v9, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->componentName:Landroid/content/ComponentName;

    .line 373
    iget-object v10, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v10}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getSpanX(Lcom/android/launcher3/Launcher;)I

    move-result v10

    iput v10, v9, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->spanX:I

    .line 374
    iget-object v10, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v10}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getSpanY(Lcom/android/launcher3/Launcher;)I

    move-result v1

    iput v1, v9, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->spanY:I

    .line 375
    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/WidgetCell;->setTag(Ljava/lang/Object;)V

    .line 389
    :cond_be
    :goto_be
    invoke-direct {p0, v8, v9}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->compareItems(Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 390
    sget-object v0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasDiffrentComponentNameData position:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 391
    goto/16 :goto_7

    .line 353
    :cond_e1
    iput v4, v8, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->size:I

    goto :goto_6b

    .line 376
    :cond_e4
    instance-of v2, v1, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_be

    .line 377
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 378
    new-instance v2, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v2, v10}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 379
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 380
    if-eqz v1, :cond_104

    .line 381
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v9, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->componentName:Landroid/content/ComponentName;

    .line 382
    iput v4, v9, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->spanX:I

    .line 383
    iput v4, v9, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$Data;->spanY:I

    .line 385
    :cond_104
    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/WidgetCell;->setTag(Ljava/lang/Object;)V

    goto :goto_be

    .line 342
    :cond_108
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_20
.end method

.method private initLayout(IILandroid/widget/GridLayout;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 193
    mul-int v3, p1, p2

    .line 194
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_29

    .line 200
    :goto_d
    invoke-virtual {p3, p1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 201
    invoke-virtual {p3, p2}, Landroid/widget/GridLayout;->setRowCount(I)V

    move v1, v2

    .line 202
    :goto_14
    if-lt v1, v3, :cond_17

    .line 206
    return-void

    .line 203
    :cond_17
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04004a

    invoke-virtual {v0, v4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetCell;

    .line 204
    invoke-virtual {p3, v0}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 202
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_29
    move v5, p2

    move p2, p1

    move p1, v5

    goto :goto_d
.end method

.method private makeGroupItemPreview(Ljava/lang/Object;Lcom/lge/launcher3/widgettray/LGWidgetCell;)V
    .registers 10

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 216
    const/4 v3, 0x0

    .line 217
    const-string v0, ""

    .line 218
    instance-of v4, p1, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;

    if-eqz v4, :cond_37

    .line 219
    check-cast p1, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;

    .line 220
    invoke-virtual {p1}, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->getGroupList()Ljava/util/List;

    move-result-object v3

    .line 221
    invoke-virtual {p1}, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    move-object v4, v3

    move-object v3, v0

    .line 229
    :goto_15
    if-eqz v4, :cond_52

    .line 230
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 233
    :goto_1b
    new-instance v5, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$GroupWidgetSizeHolder;

    invoke-direct {v5, p0}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$GroupWidgetSizeHolder;-><init>(Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;)V

    .line 234
    invoke-static {v5, v0}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$GroupWidgetSizeHolder;->access$0(Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$GroupWidgetSizeHolder;I)V

    .line 235
    const v6, 0x7f0e000b

    invoke-virtual {p2, v6, v5}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->setTag(ILjava/lang/Object;)V

    .line 238
    invoke-virtual {p2, v3}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->setWidgetName(Ljava/lang/String;)V

    .line 239
    const-string v3, ""

    invoke-virtual {p2, v3}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->setWidgetDims(Ljava/lang/String;)V

    .line 241
    if-le v0, v2, :cond_34

    move v0, v2

    .line 242
    :cond_34
    :goto_34
    if-lt v1, v0, :cond_48

    .line 246
    return-void

    .line 222
    :cond_37
    instance-of v4, p1, Lcom/lge/launcher3/widgettray/GroupResolveInfo;

    if-eqz v4, :cond_54

    .line 223
    check-cast p1, Lcom/lge/launcher3/widgettray/GroupResolveInfo;

    .line 224
    invoke-virtual {p1}, Lcom/lge/launcher3/widgettray/GroupResolveInfo;->getGroupList()Ljava/util/List;

    move-result-object v3

    .line 225
    invoke-virtual {p1}, Lcom/lge/launcher3/widgettray/GroupResolveInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    move-object v4, v3

    move-object v3, v0

    goto :goto_15

    .line 243
    :cond_48
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 244
    invoke-virtual {p2, v1, v2}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->ensureGroupItemPreview(ILjava/lang/Object;)V

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_52
    move v0, v1

    goto :goto_1b

    :cond_54
    move-object v4, v3

    move-object v3, v0

    goto :goto_15
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 419
    check-cast p1, Landroid/support/v4/view/ViewPager;

    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 420
    check-cast p3, Landroid/widget/GridLayout;

    move v2, v3

    .line 421
    :goto_c
    invoke-virtual {p3}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    if-lt v2, v0, :cond_13

    .line 434
    return-void

    .line 422
    :cond_13
    invoke-virtual {p3, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/widgettray/LGWidgetCell;

    move v4, v3

    .line 423
    :goto_1a
    const/4 v1, 0x4

    if-lt v4, v1, :cond_21

    .line 421
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    .line 424
    :cond_21
    iget-object v1, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "widget_preview"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    .line 425
    iget-object v7, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 424
    invoke-virtual {v1, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 426
    invoke-virtual {v0, v1}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/widgettray/GroupItemPreview;

    .line 427
    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Lcom/lge/launcher3/widgettray/GroupItemPreview;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_5d

    .line 428
    invoke-virtual {v1}, Lcom/lge/launcher3/widgettray/GroupItemPreview;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 429
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 423
    :cond_5d
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1a
.end method

.method public getCount()I
    .registers 5

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mWidgetsModel:Lcom/lge/launcher3/widgettray/WidgetsModelExtension;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mWidgetsModel:Lcom/lge/launcher3/widgettray/WidgetsModelExtension;

    iget-object v0, v0, Lcom/lge/launcher3/widgettray/WidgetsModelExtension;->mWidgetsList:Ljava/util/HashMap;

    if-eqz v0, :cond_20

    .line 101
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mWidgetsModel:Lcom/lge/launcher3/widgettray/WidgetsModelExtension;

    iget-object v0, v0, Lcom/lge/launcher3/widgettray/WidgetsModelExtension;->mWidgetsList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mRow:I

    iget v3, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mCol:I

    mul-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 103
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public getFirstPageIndex()I
    .registers 2

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mIsRtL:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_5
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 5

    .prologue
    .line 322
    sget-object v0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getItemPosition object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-direct {p0, p1}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->hasDiffrentData(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, -0x2

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, -0x1

    goto :goto_1b
.end method

.method public getLastPageIndex()I
    .registers 2

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mIsRtL:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getPositionAsLayoutDirection(I)I
    .registers 3

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mIsRtL:Z

    if-nez v0, :cond_5

    :goto_4
    return p1

    :cond_5
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    goto :goto_4
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .registers 14

    .prologue
    .line 109
    invoke-virtual {p0, p2}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->getPositionAsLayoutDirection(I)I

    move-result v8

    .line 111
    iget v0, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mRow:I

    iget v1, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mCol:I

    mul-int v9, v0, v1

    .line 113
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    .line 114
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setTag(Ljava/lang/Object;)V

    .line 116
    iget v1, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mRow:I

    iget v2, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mCol:I

    invoke-direct {p0, v1, v2, v0}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->initLayout(IILandroid/widget/GridLayout;)V

    .line 117
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setImportantForAccessibility(I)V

    .line 118
    sget-object v1, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "instantiateItem [pos= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WidgetSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 119
    iget-object v3, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mWidgetsModel:Lcom/lge/launcher3/widgettray/WidgetsModelExtension;

    iget-object v3, v3, Lcom/lge/launcher3/widgettray/WidgetsModelExtension;->mWidgetsList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->getWidgetPreviewLoader()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v1

    if-nez v1, :cond_5c

    .line 123
    const/4 v0, 0x0

    .line 189
    :goto_5b
    return-object v0

    .line 126
    :cond_5c
    const/4 v1, 0x0

    move v7, v1

    :goto_5e
    if-lt v7, v9, :cond_82

    :cond_60
    move-object v1, p1

    .line 187
    check-cast v1, Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 188
    sget-object v1, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "((ViewPager)pager) : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    .line 127
    :cond_82
    mul-int v1, v8, v9

    add-int/2addr v1, v7

    .line 128
    iget-object v2, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mWidgetsModel:Lcom/lge/launcher3/widgettray/WidgetsModelExtension;

    invoke-virtual {v2}, Lcom/lge/launcher3/widgettray/WidgetsModelExtension;->getPackageSize()I

    move-result v2

    if-ge v1, v2, :cond_60

    .line 131
    iget-object v2, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mWidgetsModel:Lcom/lge/launcher3/widgettray/WidgetsModelExtension;

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/widgettray/WidgetsModelExtension;->getSortedWidgets(I)Ljava/util/List;

    move-result-object v1

    .line 132
    const/4 v3, 0x0

    .line 133
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_135

    .line 134
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 145
    :cond_a0
    :goto_a0
    invoke-virtual {v0, v7}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/widgettray/LGWidgetCell;

    .line 147
    const/4 v2, 0x0

    .line 148
    const/4 v4, 0x0

    .line 149
    instance-of v5, v3, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v5, :cond_160

    move-object v2, v3

    .line 150
    check-cast v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 151
    new-instance v5, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v6, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v10, 0x0

    invoke-direct {v5, v6, v2, v10}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Landroid/os/Parcelable;)V

    .line 152
    invoke-virtual {v1, v5}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->setTag(Ljava/lang/Object;)V

    move-object v2, v3

    .line 153
    check-cast v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    iget-object v6, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    invoke-virtual {v1, v2, v6}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->applyFromAppWidgetProviderInfo(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/WidgetPreviewLoader;)V

    .line 154
    iget v2, v5, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->flags:I

    .line 163
    :cond_c4
    :goto_c4
    sget v5, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->DOWNLOADED_FLAG:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_189

    .line 164
    const/4 v2, 0x1

    move v6, v2

    .line 167
    :goto_cb
    iget-object v2, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v2, 0x7f0e00f8

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 169
    const v4, 0x7f0e00f1

    invoke-virtual {v1, v4}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/launcher3/widgettray/WidgetsImageView;

    .line 170
    iget-object v5, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    const v10, 0x7f0e0100

    invoke-virtual {v5, v10}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;

    iput-object v5, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mUninstallBtn:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;

    .line 171
    iget-object v5, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mUninstallBtn:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;

    if-eqz v5, :cond_107

    iget-object v5, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mUninstallBtn:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;

    invoke-virtual {v5}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->isUninstallMode()Z

    move-result v5

    if-eqz v5, :cond_107

    .line 172
    iget-object v5, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mUninstallBtn:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;

    invoke-virtual {v5}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->isUninstallMode()Z

    move-result v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->setUninstallBadge(Landroid/widget/ImageView;ZZ)V

    .line 173
    invoke-virtual {v4}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->invalidate()V

    .line 175
    :cond_107
    invoke-direct {p0, v3}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->checkGroupWidget(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_180

    .line 176
    invoke-direct {p0, v3, v1}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->makeGroupItemPreview(Ljava/lang/Object;Lcom/lge/launcher3/widgettray/LGWidgetCell;)V

    .line 177
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->setVisibility(I)V

    .line 178
    const v2, 0x7f0e00f2

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 179
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mUninstallBtn:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;

    invoke-virtual {v3}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->isUninstallMode()Z

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v6}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->setGroupView(Lcom/lge/launcher3/widgettray/LGWidgetCell;ZZZ)V

    .line 185
    :goto_12c
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->setVisibility(I)V

    .line 126
    :cond_130
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_5e

    .line 135
    :cond_135
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_130

    .line 136
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v2, :cond_14e

    .line 137
    new-instance v3, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;

    iget-object v2, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v3, v2, v1}, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    goto/16 :goto_a0

    .line 138
    :cond_14e
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_a0

    .line 139
    new-instance v3, Lcom/lge/launcher3/widgettray/GroupResolveInfo;

    iget-object v2, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v3, v2, v1}, Lcom/lge/launcher3/widgettray/GroupResolveInfo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    goto/16 :goto_a0

    .line 155
    :cond_160
    instance-of v5, v3, Landroid/content/pm/ResolveInfo;

    if-eqz v5, :cond_c4

    move-object v2, v3

    .line 156
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 157
    new-instance v5, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v5, v6}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 158
    invoke-virtual {v1, v5}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->setTag(Ljava/lang/Object;)V

    .line 159
    iget-object v6, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 160
    iget-object v10, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    .line 159
    invoke-virtual {v1, v6, v2, v10}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher3/WidgetPreviewLoader;)V

    .line 161
    iget v2, v5, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->flags:I

    goto/16 :goto_c4

    .line 182
    :cond_180
    iget-object v2, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 183
    invoke-virtual {v1}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->ensurePreview()V

    goto :goto_12c

    :cond_189
    move v6, v4

    goto/16 :goto_cb
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 438
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setGroupView(Lcom/lge/launcher3/widgettray/LGWidgetCell;ZZZ)V
    .registers 8

    .prologue
    .line 294
    const v0, 0x7f0e00f8

    invoke-virtual {p1, v0}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 295
    const v1, 0x7f0e00f0

    invoke-virtual {p1, v1}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 296
    if-eqz v1, :cond_31

    .line 297
    if-eqz p2, :cond_40

    .line 299
    iget-boolean v2, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mIsRtL:Z

    if-eqz v2, :cond_1f

    .line 300
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 303
    :cond_1f
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    if-eqz p3, :cond_39

    .line 306
    if-eqz p4, :cond_32

    .line 307
    const v0, 0x7f020009

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    :cond_31
    :goto_31
    return-void

    .line 309
    :cond_32
    const v0, 0x7f02000c

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_31

    .line 312
    :cond_39
    const v0, 0x7f02000d

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_31

    .line 315
    :cond_40
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_31
.end method

.method public setUninstallBadge(Landroid/support/v4/view/ViewPager;Z)V
    .registers 15

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 253
    iget v0, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mRow:I

    iget v1, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mCol:I

    mul-int v9, v0, v1

    move v4, v5

    .line 255
    :goto_9
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-lt v4, v0, :cond_10

    .line 290
    return-void

    .line 256
    :cond_10
    invoke-virtual {p1, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    move v8, v5

    .line 257
    :goto_17
    if-lt v8, v9, :cond_1d

    .line 255
    :cond_19
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_9

    .line 258
    :cond_1d
    invoke-virtual {v0, v8}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/widgettray/LGWidgetCell;

    .line 260
    if-eqz v1, :cond_19

    .line 263
    invoke-virtual {v1}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 266
    instance-of v3, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v3, :cond_6f

    .line 267
    check-cast v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v2, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->flags:I

    .line 271
    :goto_31
    sget v3, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->DOWNLOADED_FLAG:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_78

    move v6, v7

    .line 274
    :goto_37
    iget-object v10, v1, Lcom/lge/launcher3/widgettray/LGWidgetCell;->mInfo:Ljava/lang/Object;

    .line 276
    const v2, 0x7f0e00f1

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 275
    check-cast v2, Lcom/lge/launcher3/widgettray/WidgetsImageView;

    .line 277
    if-eqz v2, :cond_6b

    .line 279
    const v3, 0x7f0e00f8

    invoke-virtual {v1, v3}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 278
    check-cast v3, Landroid/widget/ImageView;

    .line 280
    iget-object v11, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mUninstallBtn:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;

    invoke-virtual {v11}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->isUninstallMode()Z

    move-result v11

    invoke-virtual {v2, v3, v11, v6}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->setUninstallBadge(Landroid/widget/ImageView;ZZ)V

    .line 282
    invoke-virtual {v2}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->invalidate()V

    .line 283
    invoke-virtual {p0, v1}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 284
    invoke-direct {p0, v10}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->checkGroupWidget(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 285
    iget-object v2, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mUninstallBtn:Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;

    invoke-virtual {v2}, Lcom/lge/launcher3/widgettray/WidgetsUninstallButton;->isUninstallMode()Z

    move-result v2

    invoke-virtual {p0, v1, v7, v2, v6}, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->setGroupView(Lcom/lge/launcher3/widgettray/LGWidgetCell;ZZZ)V

    .line 257
    :cond_6b
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_17

    .line 268
    :cond_6f
    instance-of v3, v2, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v3, :cond_7a

    .line 269
    check-cast v2, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    iget v2, v2, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->flags:I

    goto :goto_31

    :cond_78
    move v6, v5

    goto :goto_37

    :cond_7a
    move v2, v5

    goto :goto_31
.end method

.method public setWidgetsModel(Lcom/android/launcher3/model/WidgetsModel;)V
    .registers 2

    .prologue
    .line 82
    check-cast p1, Lcom/lge/launcher3/widgettray/WidgetsModelExtension;

    iput-object p1, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;->mWidgetsModel:Lcom/lge/launcher3/widgettray/WidgetsModelExtension;

    .line 96
    return-void
.end method
