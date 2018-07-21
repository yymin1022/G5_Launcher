.class public Lcom/lge/launcher3/theme/LGThemeChange;
.super Ljava/lang/Object;
.source "LGThemeChange.java"

# interfaces
.implements Lcom/lge/launcher3/infos/IThemePackage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/theme/LGThemeChange$ThemePackageChangeListener;
    }
.end annotation


# static fields
.field protected static sInstance:Lcom/lge/launcher3/theme/LGThemeChange;


# instance fields
.field private bChangingTheme:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

.field private mCurrentThemeName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mThemeInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/launcher3/theme/LGThemeInfo;",
            ">;"
        }
    .end annotation
.end field

.field mThemePackageChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/theme/LGThemeChange$ThemePackageChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v3, p0, Lcom/lge/launcher3/theme/LGThemeChange;->bChangingTheme:Z

    .line 656
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mThemePackageChangeListeners:Ljava/util/ArrayList;

    .line 61
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChange;->getCurrentTheme()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/theme/LGThemeInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mThemeInfoCache:Ljava/util/HashMap;

    .line 64
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mPm:Landroid/content/pm/PackageManager;

    .line 65
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->readThemeXML()V

    .line 66
    iput-boolean v3, p0, Lcom/lge/launcher3/theme/LGThemeChange;->bChangingTheme:Z

    .line 67
    return-void
.end method

.method private addInstalledThemes(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/theme/LGThemeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 116
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mPm:Landroid/content/pm/PackageManager;

    if-nez v1, :cond_6

    .line 138
    :cond_5
    return-void

    .line 120
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.launcher2.THEME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 124
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    .line 128
    :goto_18
    if-ge v1, v3, :cond_5

    .line 129
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 130
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/lge/launcher3/theme/LGThemeChange;->readThemeInfo(Ljava/lang/String;)Lcom/lge/launcher3/theme/LGThemeInfo;

    move-result-object v4

    .line 131
    if-eqz v4, :cond_39

    .line 132
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.lge.themepark.aka"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 133
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_39
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18
.end method

.method private addOptimusTheme(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/theme/LGThemeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    const-string v0, "com.lge.launcher2.theme.optimus"

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeChange;->readThemeInfo(Ljava/lang/String;)Lcom/lge/launcher3/theme/LGThemeInfo;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_b

    .line 111
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_b
    return-void
.end method

.method private addPlusImage(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/theme/LGThemeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/LGHomeResources;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/LGHomeResources;

    move-result-object v0

    .line 142
    const-string v1, "img_themepreview_add"

    .line 141
    invoke-virtual {v0, v1}, Lcom/lge/launcher3/util/LGHomeResources;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_24

    .line 144
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mContext:Landroid/content/Context;

    .line 145
    const-string v1, "com.lge.themepark.theme_plus"

    .line 144
    invoke-static {v0, v1}, Lcom/lge/launcher3/util/PackageUtils;->isPackageUninstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 145
    if-eqz v0, :cond_24

    .line 146
    new-instance v0, Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mContext:Landroid/content/Context;

    const-string v2, "com.lge.themepark.theme_plus"

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/theme/LGThemeInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_24
    return-void
.end method

.method private getCalendarIcon()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 632
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/lge/launcher3/theme/LGThemeChange;
    .registers 3

    .prologue
    .line 70
    const-class v1, Lcom/lge/launcher3/theme/LGThemeChange;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/lge/launcher3/theme/LGThemeChange;->sInstance:Lcom/lge/launcher3/theme/LGThemeChange;

    if-nez v0, :cond_e

    .line 71
    new-instance v0, Lcom/lge/launcher3/theme/LGThemeChange;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/theme/LGThemeChange;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/theme/LGThemeChange;->sInstance:Lcom/lge/launcher3/theme/LGThemeChange;

    .line 74
    :cond_e
    sget-object v0, Lcom/lge/launcher3/theme/LGThemeChange;->sInstance:Lcom/lge/launcher3/theme/LGThemeChange;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getShortcutIcon(Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)Landroid/graphics/drawable/Drawable;
    .registers 14

    .prologue
    const/4 v2, 0x0

    .line 585
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v0, v0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    .line 586
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v3, v1, Lcom/lge/launcher3/theme/LGThemeInfo;->mLaucnherResources:Landroid/content/res/Resources;

    .line 587
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v4, v1, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 588
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v5, v1, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconCache:Ljava/util/HashMap;

    .line 589
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v6, v1, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarIcon:Landroid/graphics/drawable/Drawable;

    .line 590
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v7, v1, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarInfo:Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;

    .line 591
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget v1, v1, Lcom/lge/launcher3/theme/LGThemeInfo;->mMenuScale:F

    .line 593
    if-eqz p1, :cond_27

    if-eqz v0, :cond_27

    if-eqz v4, :cond_27

    if-eqz v5, :cond_27

    .line 594
    if-nez v3, :cond_29

    :cond_27
    move-object v0, v2

    .line 628
    :goto_28
    return-object v0

    .line 598
    :cond_29
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 599
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->loadIconCache()V

    .line 602
    :cond_34
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;

    .line 603
    const-string v5, "com.android.calendar/com.android.calendar.AllInOneActivity"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 604
    iget-object v5, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    invoke-direct {p0}, Lcom/lge/launcher3/theme/LGThemeChange;->getCalendarIcon()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/lge/launcher3/theme/LGThemeInfo;->makeCalendarIcon(Landroid/graphics/Bitmap;)V

    .line 606
    if-eqz v6, :cond_57

    if-eqz v0, :cond_57

    if-eqz v7, :cond_57

    .line 607
    iget-boolean v5, v7, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->bDrawText:Z

    if-eqz v5, :cond_57

    .line 608
    iput-object v6, v0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 612
    :cond_57
    if-eqz v0, :cond_6d

    .line 613
    iget-object v5, v0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6d

    .line 615
    if-eqz p3, :cond_66

    .line 616
    const v1, 0x7f090019

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 618
    :cond_66
    iget-object v0, v0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v1}, Lcom/lge/launcher3/theme/LGThemeInfo;->scaleDrawable(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_28

    .line 624
    :cond_6d
    const-string v0, "com.lge.themepark"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 625
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/lge/launcher3/theme/LGThemeInfo;->getShortcutIconBG(Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_28

    :cond_7d
    move-object v0, v2

    .line 628
    goto :goto_28
.end method

.method private getThemeTarget(Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;
    .registers 4

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 358
    instance-of v1, p1, Lcom/android/launcher3/FolderIcon;

    if-eqz v1, :cond_c

    .line 359
    check-cast p1, Lcom/android/launcher3/FolderIcon;

    invoke-static {p1}, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderIconAspect$com_android_launcher3_FolderIcon$getFolderName(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    .line 364
    :goto_b
    return-object p1

    .line 360
    :cond_c
    instance-of v1, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_13

    .line 361
    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    goto :goto_b

    :cond_13
    move-object p1, v0

    goto :goto_b
.end method

.method private makeCalendarIcon(Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 426
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v0, v0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarIcon:Landroid/graphics/drawable/Drawable;

    .line 427
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v1, v1, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarInfo:Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;

    .line 429
    const-string v2, "com.android.calendar/com.android.calendar.AllInOneActivity"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 430
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    invoke-direct {p0}, Lcom/lge/launcher3/theme/LGThemeChange;->getCalendarIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/launcher3/theme/LGThemeInfo;->makeCalendarIcon(Landroid/graphics/Bitmap;)V

    .line 432
    if-eqz v0, :cond_25

    if-eqz p1, :cond_25

    if-eqz v1, :cond_25

    .line 433
    iget-boolean v1, v1, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->bDrawText:Z

    if-eqz v1, :cond_25

    .line 434
    iput-object v0, p1, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 437
    :cond_25
    return-void
.end method

.method public static requestReload(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.launcher2.FORCERELOAD_HOME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 287
    return-void
.end method

.method private requestUpdateConfiguration(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 225
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 226
    const-class v1, Landroid/app/IActivityManager;

    const-string v2, "setTheme"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 227
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v0, "requestUpdateConfiguration()"

    const-string v1, "notfistBooting"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_24} :catch_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_2a
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_24} :catch_2f

    .line 236
    :goto_24
    return-void

    .line 229
    :catch_25
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_24

    .line 231
    :catch_2a
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24

    .line 233
    :catch_2f
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_24
.end method

.method private scaleIcon(Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;Landroid/widget/TextView;ZZLandroid/content/res/Resources;)Z
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v3, 0x0

    .line 510
    if-eqz p1, :cond_42

    .line 511
    iget-object v0, p1, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_42

    .line 512
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget v0, v0, Lcom/lge/launcher3/theme/LGThemeInfo;->mMenuScale:F

    .line 515
    if-eqz p3, :cond_17

    .line 516
    const v0, 0x7f090019

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 521
    :cond_17
    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 523
    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    .line 522
    if-ne v1, v2, :cond_36

    .line 524
    if-eqz p4, :cond_36

    .line 527
    iget-object v1, p1, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    mul-float v2, v0, v4

    .line 528
    mul-float/2addr v0, v4

    .line 526
    invoke-static {v1, v2, v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->scaleDrawable(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 529
    invoke-virtual {p2, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 537
    :goto_34
    const/4 v0, 0x1

    .line 542
    :goto_35
    return v0

    .line 533
    :cond_36
    iget-object v1, p1, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0, v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->scaleDrawable(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 534
    invoke-virtual {p2, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_34

    :cond_40
    move v0, v1

    .line 539
    goto :goto_35

    :cond_42
    move v0, v1

    .line 542
    goto :goto_35
.end method


# virtual methods
.method public applyTheme(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 336
    if-nez p1, :cond_3

    .line 353
    :cond_2
    :goto_2
    return-void

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    if-eqz v0, :cond_2

    .line 344
    invoke-direct {p0, p1}, Lcom/lge/launcher3/theme/LGThemeChange;->getThemeTarget(Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_2

    .line 349
    const-string v1, "WorkspaceAppColor"

    invoke-virtual {p0, v1}, Lcom/lge/launcher3/theme/LGThemeChange;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 350
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 351
    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTextColor(I)V

    goto :goto_2
.end method

.method public changeIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    .line 637
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 639
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v0, v0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 640
    if-eqz v0, :cond_17

    const-string v1, "com.lge.launcher2.theme.optimus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 649
    :cond_16
    :goto_16
    return-object p2

    .line 644
    :cond_17
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/lge/launcher3/theme/LGThemeChange;->getShortcutIcon(Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 645
    if-eqz v0, :cond_16

    .line 646
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_16
.end method

.method public changeShortcutIcon(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/TextView;I)Z
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 441
    if-eqz p1, :cond_6

    if-nez p3, :cond_8

    :cond_6
    move v0, v1

    .line 475
    :goto_7
    return v0

    .line 444
    :cond_8
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v0, v0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    .line 445
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v2, v2, Lcom/lge/launcher3/theme/LGThemeInfo;->mLaucnherResources:Landroid/content/res/Resources;

    .line 446
    iget-object v3, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v3, v3, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 447
    iget-object v4, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v4, v4, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconCache:Ljava/util/HashMap;

    .line 449
    if-eqz v0, :cond_20

    if-eqz v3, :cond_20

    if-eqz v4, :cond_20

    .line 450
    if-nez v2, :cond_22

    :cond_20
    move v0, v1

    .line 451
    goto :goto_7

    .line 454
    :cond_22
    if-eqz v3, :cond_2e

    .line 455
    const-string v0, "com.lge.launcher2.theme.optimus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v1

    .line 456
    goto :goto_7

    .line 459
    :cond_2e
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 460
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->loadIconCache()V

    .line 463
    :cond_39
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;

    .line 464
    invoke-direct {p0, v0, p1}, Lcom/lge/launcher3/theme/LGThemeChange;->makeCalendarIcon(Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;Ljava/lang/String;)V

    .line 466
    if-eqz v0, :cond_55

    .line 467
    iget-object v2, v0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_55

    .line 468
    iget-object v0, v0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 469
    int-to-float v1, p4

    int-to-float v2, p4

    .line 468
    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/theme/LGThemeInfo;->scaleDrawable(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 470
    invoke-virtual {p3, v5, v0, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 471
    const/4 v0, 0x1

    goto :goto_7

    :cond_55
    move v0, v1

    .line 475
    goto :goto_7
.end method

.method public changeShortcutIcon(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/TextView;ZZZ)Z
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 480
    if-eqz p1, :cond_5

    if-nez p3, :cond_6

    .line 505
    :cond_5
    :goto_5
    return v0

    .line 483
    :cond_6
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v1, v1, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    .line 484
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v5, v2, Lcom/lge/launcher3/theme/LGThemeInfo;->mLaucnherResources:Landroid/content/res/Resources;

    .line 485
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v2, v2, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 486
    iget-object v3, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v3, v3, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconCache:Ljava/util/HashMap;

    .line 488
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 489
    if-eqz v5, :cond_5

    .line 493
    if-eqz v2, :cond_28

    .line 494
    const-string v1, "com.lge.launcher2.theme.optimus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 498
    :cond_28
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 499
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->loadIconCache()V

    .line 502
    :cond_33
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;

    .line 503
    invoke-direct {p0, v1, p1}, Lcom/lge/launcher3/theme/LGThemeChange;->makeCalendarIcon(Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move v4, p6

    .line 505
    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/theme/LGThemeChange;->scaleIcon(Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;Landroid/widget/TextView;ZZLandroid/content/res/Resources;)Z

    move-result v0

    goto :goto_5
.end method

.method public changeTheme(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/theme/LGThemeChange;->getThemeInfo(Ljava/lang/String;)Lcom/lge/launcher3/theme/LGThemeInfo;

    move-result-object v0

    .line 199
    if-nez v0, :cond_7

    .line 221
    :cond_6
    :goto_6
    return-void

    .line 201
    :cond_7
    iget-object v1, v0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 202
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->bChangingTheme:Z

    .line 203
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/theme/LGThemeChange;->setCurrentTheme(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mContext:Landroid/content/Context;

    const-string v2, "Home_ChangeTheme"

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->changeWallPaper()V

    .line 206
    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    .line 207
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->resetAdatativeTextColor(Landroid/content/Context;)V

    .line 209
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    .line 210
    invoke-direct {p0, p1}, Lcom/lge/launcher3/theme/LGThemeChange;->requestUpdateConfiguration(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 212
    if-nez v0, :cond_3c

    .line 213
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 214
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 216
    :cond_3c
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$clearIconDB(Lcom/android/launcher3/IconCache;)V

    .line 217
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeChange;->requestReload(Landroid/content/Context;)V

    .line 218
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChange;->onDestroy()V

    goto :goto_6
.end method

.method public checkThemeResources()Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 313
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeName:Ljava/lang/String;

    const-string v2, "com.lge.launcher2.theme.optimus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 331
    :cond_b
    :goto_b
    return v0

    .line 317
    :cond_c
    const-string v1, "PageMenuDoneSelector"

    invoke-virtual {p0, v1}, Lcom/lge/launcher3/theme/LGThemeChange;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 318
    const-string v2, "PageMenuEditSelector"

    invoke-virtual {p0, v2}, Lcom/lge/launcher3/theme/LGThemeChange;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 319
    const-string v3, "PageMenuSearchSelector"

    invoke-virtual {p0, v3}, Lcom/lge/launcher3/theme/LGThemeChange;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 320
    const-string v4, "PageMenuTabBG"

    invoke-virtual {p0, v4}, Lcom/lge/launcher3/theme/LGThemeChange;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 322
    const-string v5, "PageMenuTabUnselectedHolo"

    .line 321
    invoke-virtual {p0, v5}, Lcom/lge/launcher3/theme/LGThemeChange;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 323
    const-string v6, "PageMenuTabAnimation"

    invoke-virtual {p0, v6}, Lcom/lge/launcher3/theme/LGThemeChange;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 327
    if-eqz v1, :cond_b

    if-eqz v2, :cond_b

    if-eqz v3, :cond_b

    if-eqz v4, :cond_b

    .line 328
    if-eqz v5, :cond_b

    if-eqz v6, :cond_b

    .line 329
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public countDownloadTheme()I
    .registers 4

    .prologue
    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-direct {p0, v1}, Lcom/lge/launcher3/theme/LGThemeChange;->addInstalledThemes(Ljava/util/ArrayList;)V

    .line 183
    const/4 v0, 0x0

    .line 184
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    .line 190
    return v1

    .line 184
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/LGThemeInfo;

    .line 185
    iget-boolean v0, v0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIsSystem:Z

    if-nez v0, :cond_e

    .line 186
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e
.end method

.method public getColor(Ljava/lang/String;)I
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 414
    if-nez p1, :cond_5

    move v0, v1

    .line 422
    :goto_4
    return v0

    .line 417
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v0, v0, Lcom/lge/launcher3/theme/LGThemeInfo;->mThemeResHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 418
    if-eqz v0, :cond_18

    .line 419
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->toRGB(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :cond_18
    move v0, v1

    .line 422
    goto :goto_4
.end method

.method public getCurrentTheme()Ljava/lang/String;
    .registers 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 256
    const-string v0, "com.lge.launcher2.theme.optimus"

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeChange;->setCurrentTheme(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeName:Ljava/lang/String;

    .line 280
    :goto_b
    return-object v0

    .line 262
    :cond_c
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mContext:Landroid/content/Context;

    const-string v1, "LGHome2_Theme"

    .line 263
    const/4 v2, 0x4

    .line 262
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 264
    const-string v1, "CurrentTheme"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeName:Ljava/lang/String;

    .line 265
    const-string v0, "getCurrentTheme()"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCurrentThemeName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeName:Ljava/lang/String;

    if-nez v0, :cond_5b

    .line 267
    invoke-static {}, Lcom/lge/launcher3/util/LGHomeFeature;->getFEATURE_DEFAULT_THEME()[Ljava/lang/String;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_5b

    array-length v1, v0

    if-lez v1, :cond_5b

    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_5b

    .line 269
    const-string v1, "sys.theme"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 270
    if-ltz v1, :cond_5b

    array-length v2, v0

    if-ge v1, v2, :cond_5b

    .line 271
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/lge/launcher3/theme/LGThemeChange;->setCurrentTheme(Ljava/lang/String;)V

    .line 272
    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/lge/launcher3/theme/LGThemeChange;->requestUpdateConfiguration(Ljava/lang/String;)V

    .line 277
    :cond_5b
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeName:Ljava/lang/String;

    if-nez v0, :cond_64

    .line 278
    const-string v0, "com.lge.launcher2.theme.optimus"

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeChange;->setCurrentTheme(Ljava/lang/String;)V

    .line 280
    :cond_64
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeName:Ljava/lang/String;

    goto :goto_b
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 379
    if-nez p1, :cond_4

    .line 410
    :cond_3
    :goto_3
    return-object v0

    .line 385
    :cond_4
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v2, v1, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    .line 386
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v3, v1, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 388
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 393
    const/4 v1, 0x0

    .line 394
    if-eqz v2, :cond_25

    .line 395
    :try_start_17
    iget-object v4, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    invoke-virtual {v4, p1}, Lcom/lge/launcher3/theme/LGThemeInfo;->getResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 396
    if-eqz v4, :cond_25

    .line 398
    const-string v1, "drawable"

    .line 397
    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 401
    :cond_25
    if-eqz v1, :cond_3

    .line 402
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2a} :catch_2c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_2a} :catch_31

    move-result-object v0

    goto :goto_3

    .line 404
    :catch_2c
    move-exception v1

    .line 405
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 406
    :catch_31
    move-exception v1

    .line 407
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_3
.end method

.method public getThemeInfo(Ljava/lang/String;)Lcom/lge/launcher3/theme/LGThemeInfo;
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mThemeInfoCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/LGThemeInfo;

    return-object v0
.end method

.method public getWidgetPreview(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 547
    if-nez p1, :cond_4

    .line 548
    const/4 v0, 0x0

    .line 551
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeChange;->getWidgetPreview(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3
.end method

.method public declared-synchronized getWidgetPreview(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 555
    monitor-enter p0

    if-nez p1, :cond_7

    move-object v0, v1

    .line 576
    :goto_5
    monitor-exit p0

    return-object v0

    .line 559
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v0, v0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 560
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v2, v2, Lcom/lge/launcher3/theme/LGThemeInfo;->mWidgetPreviewCache:Ljava/util/HashMap;

    .line 562
    if-eqz v0, :cond_1b

    if-eqz v2, :cond_1b

    .line 563
    const-string v3, "com.lge.launcher2.theme.optimus"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1b
    move-object v0, v1

    .line 564
    goto :goto_5

    .line 567
    :cond_1d
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_28

    .line 568
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->loadIconCache()V

    .line 571
    :cond_28
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;

    .line 572
    if-eqz v0, :cond_37

    iget-object v2, v0, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;->mWidgetPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_37

    .line 573
    iget-object v0, v0, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;->mWidgetPreview:Landroid/graphics/drawable/Drawable;
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_39

    goto :goto_5

    :cond_37
    move-object v0, v1

    .line 576
    goto :goto_5

    .line 555
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isChangingTheme()Z
    .registers 2

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->bChangingTheme:Z

    return v0
.end method

.method public notifyCurrentThemePackageRemoved(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 667
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mThemePackageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 670
    return-void

    .line 667
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/LGThemeChange$ThemePackageChangeListener;

    .line 668
    invoke-interface {v0, p1}, Lcom/lge/launcher3/theme/LGThemeChange$ThemePackageChangeListener;->onCurrentThemePackageRemoved(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 290
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mThemeInfoCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 291
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 292
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 300
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mThemeInfoCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 302
    iput-object v2, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mPm:Landroid/content/pm/PackageManager;

    .line 303
    iput-object v2, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mContext:Landroid/content/Context;

    .line 304
    sput-object v2, Lcom/lge/launcher3/theme/LGThemeChange;->sInstance:Lcom/lge/launcher3/theme/LGThemeChange;

    .line 305
    iput-object v2, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeName:Ljava/lang/String;

    .line 306
    return-void

    .line 293
    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/LGThemeInfo;

    .line 294
    if-eqz v0, :cond_b

    .line 295
    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->onDestroy()V

    goto :goto_b
.end method

.method public readThemeInfo(Ljava/lang/String;)Lcom/lge/launcher3/theme/LGThemeInfo;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 151
    if-nez p1, :cond_4

    .line 170
    :cond_3
    :goto_3
    return-object v0

    .line 155
    :cond_4
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mContext:Landroid/content/Context;

    if-nez v1, :cond_10

    .line 156
    const-string v1, "readThemeInfo()"

    const-string v2, "mContext is null"

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 160
    :cond_10
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mThemeInfoCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/LGThemeInfo;

    .line 162
    if-nez v0, :cond_3

    .line 163
    new-instance v0, Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/lge/launcher3/theme/LGThemeInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    iget-object v1, v0, Lcom/lge/launcher3/theme/LGThemeInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_28

    .line 165
    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->readThemeXML()V

    .line 167
    :cond_28
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mThemeInfoCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public registerThemePackageChangeListener(Lcom/lge/launcher3/theme/LGThemeChange$ThemePackageChangeListener;)V
    .registers 3

    .prologue
    .line 659
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mThemePackageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    return-void
.end method

.method public searchThemePackage()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/theme/LGThemeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-direct {p0, v0}, Lcom/lge/launcher3/theme/LGThemeChange;->addOptimusTheme(Ljava/util/ArrayList;)V

    .line 81
    invoke-direct {p0, v0}, Lcom/lge/launcher3/theme/LGThemeChange;->addInstalledThemes(Ljava/util/ArrayList;)V

    .line 82
    invoke-direct {p0, v0}, Lcom/lge/launcher3/theme/LGThemeChange;->addPlusImage(Ljava/util/ArrayList;)V

    .line 84
    new-instance v1, Lcom/lge/launcher3/theme/LGThemeChange$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/theme/LGThemeChange$1;-><init>(Lcom/lge/launcher3/theme/LGThemeChange;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 105
    return-object v0
.end method

.method public setCurrentTheme(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_32

    .line 240
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mContext:Landroid/content/Context;

    .line 241
    const-string v1, "LGHome2_Theme"

    .line 242
    const/4 v2, 0x4

    .line 240
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 244
    const-string v1, "CurrentTheme"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 245
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 246
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeName:Ljava/lang/String;

    .line 250
    :goto_1b
    const-string v0, "setCurrentTheme()"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCurrentThemeName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void

    .line 248
    :cond_32
    const-string v0, "com.lge.launcher2.theme.optimus"

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeName:Ljava/lang/String;

    goto :goto_1b
.end method

.method public setMenuScale(F)V
    .registers 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mCurrentThemeInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    iput p1, v0, Lcom/lge/launcher3/theme/LGThemeInfo;->mMenuScale:F

    .line 581
    return-void
.end method

.method public unregisterThemePackageChangeListener(Lcom/lge/launcher3/theme/LGThemeChange$ThemePackageChangeListener;)V
    .registers 3

    .prologue
    .line 663
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mThemePackageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 664
    return-void
.end method

.method public validateCurrentTheme()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 368
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeChange;->getCurrentTheme()Ljava/lang/String;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChange;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/PackageUtils;->isPackageUninstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 370
    invoke-static {}, Lcom/lge/launcher3/util/LGHomeFeature;->getFEATURE_DEFAULT_THEME()[Ljava/lang/String;

    move-result-object v0

    .line 371
    array-length v1, v0

    if-gtz v1, :cond_18

    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_22

    .line 372
    :cond_18
    aget-object v1, v0, v3

    invoke-virtual {p0, v1}, Lcom/lge/launcher3/theme/LGThemeChange;->readThemeInfo(Ljava/lang/String;)Lcom/lge/launcher3/theme/LGThemeInfo;

    .line 373
    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeChange;->changeTheme(Ljava/lang/String;)V

    .line 376
    :cond_22
    return-void
.end method
