.class public Lcom/lge/launcher3/theme/LGThemeInfo;
.super Ljava/lang/Object;
.source "LGThemeInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;,
        Lcom/lge/launcher3/theme/LGThemeInfo$ChangedShortcutInfo;,
        Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;,
        Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;
    }
.end annotation


# static fields
.field private static final DIMEN_STRING:Ljava/lang/String; = "dimen"

.field private static sPreViewHeight:I

.field private static sPreViewWidth:I


# instance fields
.field public final INVALID_RESOURCE_ID:I

.field public mAppInfo:Landroid/content/pm/ApplicationInfo;

.field public mBGImageCount:I

.field public mCalendarIcon:Landroid/graphics/drawable/Drawable;

.field public mCalendarIndex:I

.field public mCalendarInfo:Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;

.field public mChangedShortcutIconBGList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/theme/LGThemeInfo$ChangedShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field public mFGImageCount:I

.field private mIconResourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/theme/LGIconResource;",
            ">;"
        }
    .end annotation
.end field

.field public mIconResourceLoaded:Z

.field public mIsInstalled:Z

.field public mIsSystem:Z

.field public mLabel:Ljava/lang/String;

.field public mLaucnherResources:Landroid/content/res/Resources;

.field public mMenuScale:F

.field public mPackageName:Ljava/lang/String;

.field private mRank:I

.field public mResources:Landroid/content/res/Resources;

.field private mShortcutIconBGCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mShortcutIconBGImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mShortcutIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mShortcutIconCacheLoaded:Z

.field public mShortcutIconImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mThemePackageContext:Landroid/content/Context;

.field public mThemeResHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mWidgetInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mWidgetPreviewCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mWorkspaceAppOutLineEffect:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, -0x1

    .line 899
    sput v0, Lcom/lge/launcher3/theme/LGThemeInfo;->sPreViewHeight:I

    .line 900
    sput v0, Lcom/lge/launcher3/theme/LGThemeInfo;->sPreViewWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v4, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIconResourceLoaded:Z

    .line 55
    iput-boolean v4, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconCacheLoaded:Z

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconCache:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mWidgetPreviewCache:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconBGCache:Ljava/util/HashMap;

    .line 63
    iput v4, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mBGImageCount:I

    .line 64
    iput v4, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mFGImageCount:I

    .line 66
    iput v4, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->INVALID_RESOURCE_ID:I

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarIndex:I

    .line 72
    iput-boolean v4, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIsSystem:Z

    .line 73
    iput-boolean v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIsInstalled:Z

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mThemeResHash:Ljava/util/HashMap;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mMenuScale:F

    .line 132
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mContext:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconImageList:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mWidgetInfoList:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconBGImageList:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mChangedShortcutIconBGList:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIconResourceList:Ljava/util/ArrayList;

    .line 141
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_99

    .line 145
    :try_start_64
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 146
    const/16 v2, 0x2000

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 147
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    .line 148
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mLaucnherResources:Landroid/content/res/Resources;

    .line 149
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 150
    const/4 v3, 0x2

    .line 149
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mThemePackageContext:Landroid/content/Context;

    .line 152
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 153
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_99

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIsSystem:Z
    :try_end_99
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_64 .. :try_end_99} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_99} :catch_b0

    .line 164
    :cond_99
    :goto_99
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mLaucnherResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_a8

    .line 165
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mLaucnherResources:Landroid/content/res/Resources;

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mMenuScale:F

    .line 169
    :cond_a8
    invoke-direct {p0}, Lcom/lge/launcher3/theme/LGThemeInfo;->initRank()V

    .line 170
    return-void

    .line 158
    :catch_ac
    move-exception v0

    iput-boolean v4, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIsInstalled:Z

    goto :goto_99

    .line 159
    :catch_b0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_99
.end method

.method private static final createConstructorFastBitmapDrawable_aroundBody0(Landroid/graphics/Bitmap;)Lcom/lge/launcher3/util/IFastBitmapDrawable;
    .registers 2

    .prologue
    .line 495
    invoke-static {p0}, Lcom/lge/launcher3/util/Utilities;->createConstructorFastBitmapDrawable(Landroid/graphics/Bitmap;)Lcom/lge/launcher3/util/IFastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static final createConstructorFastBitmapDrawable_aroundBody1$advice(Landroid/graphics/Bitmap;Lcom/lge/launcher3/util/FastBitmapDrawableAspect;Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/lge/launcher3/util/IFastBitmapDrawable;
    .registers 5

    .prologue
    .line 13
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {v0, p2}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    return-object v0
.end method

.method private static final createConstructorFastBitmapDrawable_aroundBody10(Lcom/lge/launcher3/theme/LGThemeInfo;Landroid/graphics/Bitmap;)Lcom/lge/launcher3/util/IFastBitmapDrawable;
    .registers 3

    .prologue
    .line 964
    invoke-static {p1}, Lcom/lge/launcher3/util/Utilities;->createConstructorFastBitmapDrawable(Landroid/graphics/Bitmap;)Lcom/lge/launcher3/util/IFastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static final createConstructorFastBitmapDrawable_aroundBody11$advice(Lcom/lge/launcher3/theme/LGThemeInfo;Landroid/graphics/Bitmap;Lcom/lge/launcher3/util/FastBitmapDrawableAspect;Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/lge/launcher3/util/IFastBitmapDrawable;
    .registers 6

    .prologue
    .line 13
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {v0, p3}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    return-object v0
.end method

.method private static final createConstructorFastBitmapDrawable_aroundBody2(Lcom/lge/launcher3/theme/LGThemeInfo;Landroid/graphics/Bitmap;)Lcom/lge/launcher3/util/IFastBitmapDrawable;
    .registers 3

    .prologue
    .line 577
    invoke-static {p1}, Lcom/lge/launcher3/util/Utilities;->createConstructorFastBitmapDrawable(Landroid/graphics/Bitmap;)Lcom/lge/launcher3/util/IFastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static final createConstructorFastBitmapDrawable_aroundBody3$advice(Lcom/lge/launcher3/theme/LGThemeInfo;Landroid/graphics/Bitmap;Lcom/lge/launcher3/util/FastBitmapDrawableAspect;Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/lge/launcher3/util/IFastBitmapDrawable;
    .registers 6

    .prologue
    .line 13
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {v0, p3}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    return-object v0
.end method

.method private static final createConstructorFastBitmapDrawable_aroundBody4(Lcom/lge/launcher3/theme/LGThemeInfo;Landroid/graphics/Bitmap;)Lcom/lge/launcher3/util/IFastBitmapDrawable;
    .registers 3

    .prologue
    .line 627
    invoke-static {p1}, Lcom/lge/launcher3/util/Utilities;->createConstructorFastBitmapDrawable(Landroid/graphics/Bitmap;)Lcom/lge/launcher3/util/IFastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static final createConstructorFastBitmapDrawable_aroundBody5$advice(Lcom/lge/launcher3/theme/LGThemeInfo;Landroid/graphics/Bitmap;Lcom/lge/launcher3/util/FastBitmapDrawableAspect;Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/lge/launcher3/util/IFastBitmapDrawable;
    .registers 6

    .prologue
    .line 13
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {v0, p3}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    return-object v0
.end method

.method private static final createConstructorFastBitmapDrawable_aroundBody6(Lcom/lge/launcher3/theme/LGThemeInfo;Landroid/graphics/Bitmap;)Lcom/lge/launcher3/util/IFastBitmapDrawable;
    .registers 3

    .prologue
    .line 815
    invoke-static {p1}, Lcom/lge/launcher3/util/Utilities;->createConstructorFastBitmapDrawable(Landroid/graphics/Bitmap;)Lcom/lge/launcher3/util/IFastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static final createConstructorFastBitmapDrawable_aroundBody7$advice(Lcom/lge/launcher3/theme/LGThemeInfo;Landroid/graphics/Bitmap;Lcom/lge/launcher3/util/FastBitmapDrawableAspect;Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/lge/launcher3/util/IFastBitmapDrawable;
    .registers 6

    .prologue
    .line 13
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {v0, p3}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    return-object v0
.end method

.method private static final createConstructorFastBitmapDrawable_aroundBody8(Lcom/lge/launcher3/theme/LGThemeInfo;Landroid/graphics/Bitmap;)Lcom/lge/launcher3/util/IFastBitmapDrawable;
    .registers 3

    .prologue
    .line 937
    invoke-static {p1}, Lcom/lge/launcher3/util/Utilities;->createConstructorFastBitmapDrawable(Landroid/graphics/Bitmap;)Lcom/lge/launcher3/util/IFastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static final createConstructorFastBitmapDrawable_aroundBody9$advice(Lcom/lge/launcher3/theme/LGThemeInfo;Landroid/graphics/Bitmap;Lcom/lge/launcher3/util/FastBitmapDrawableAspect;Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/lge/launcher3/util/IFastBitmapDrawable;
    .registers 6

    .prologue
    .line 13
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {v0, p3}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    return-object v0
.end method

.method private getAppNameFromPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 378
    if-nez p1, :cond_5

    .line 390
    :cond_4
    :goto_4
    return-object v0

    .line 382
    :cond_5
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 383
    if-ltz v1, :cond_4

    .line 386
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private getBitmap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    .line 643
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/WindowUtils;->getDensityDpi(Landroid/content/Context;)I

    move-result v0

    .line 645
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 646
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 647
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 648
    invoke-static {p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 650
    if-nez v0, :cond_18

    .line 651
    const/4 v0, 0x0

    .line 655
    :goto_17
    return-object v0

    .line 654
    :cond_18
    const/4 v1, 0x1

    invoke-static {v0, p3, p4, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_17
.end method

.method private getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 659
    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_8

    .line 681
    :cond_7
    :goto_7
    return-object v0

    .line 664
    :cond_8
    const/4 v1, 0x0

    .line 665
    :try_start_9
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_1d

    .line 666
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/theme/LGThemeInfo;->getResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 667
    if-eqz v2, :cond_1d

    .line 668
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    .line 669
    const-string v3, "drawable"

    iget-object v4, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 668
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 672
    :cond_1d
    if-eqz v1, :cond_7

    .line 673
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, v2, v1, p2, p3}, Lcom/lge/launcher3/theme/LGThemeInfo;->getBitmap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_24} :catch_26
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_24} :catch_2b

    move-result-object v0

    goto :goto_7

    .line 675
    :catch_26
    move-exception v1

    .line 676
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 677
    :catch_2b
    move-exception v1

    .line 678
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_7
.end method

.method private getDefaultWallpaper(II)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 972
    new-instance v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;

    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;-><init>(Landroid/content/Context;)V

    .line 973
    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->getList()Ljava/util/List;

    move-result-object v3

    .line 974
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_13
    if-gez v2, :cond_21

    .line 980
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3c

    :cond_1f
    move-object v0, v1

    .line 1002
    :goto_20
    return-object v0

    .line 975
    :cond_21
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    iget v0, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resImage:I

    if-nez v0, :cond_38

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    iget-object v0, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableRes:Landroid/graphics/Bitmap;

    if-nez v0, :cond_38

    .line 976
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 974
    :cond_38
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_13

    .line 980
    :cond_3c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    .line 981
    iget v3, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resImage:I

    if-eqz v3, :cond_19

    .line 984
    :try_start_46
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->mPackageName:Ljava/lang/String;

    .line 985
    const/4 v4, 0x2

    .line 984
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_4e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_4e} :catch_5c

    move-result-object v2

    .line 990
    :goto_4f
    if-eqz v2, :cond_1f

    .line 994
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 996
    iget v0, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resImage:I

    .line 997
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/lge/launcher3/theme/LGThemeInfo;->getBitmap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_20

    .line 986
    :catch_5c
    move-exception v2

    .line 987
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v2, v1

    goto :goto_4f
.end method

.method private getDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 612
    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    if-nez v2, :cond_a

    :cond_8
    move-object v0, v1

    .line 639
    :goto_9
    return-object v0

    .line 618
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_1e

    .line 619
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/theme/LGThemeInfo;->getResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 620
    if-eqz v2, :cond_1e

    .line 621
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    .line 622
    const-string v3, "drawable"

    iget-object v4, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 621
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 625
    :cond_1e
    if-eqz v0, :cond_3f

    .line 626
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, v2, v0, p2, p3}, Lcom/lge/launcher3/theme/LGThemeInfo;->getBitmap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 627
    invoke-static {}, Lcom/lge/launcher3/util/FastBitmapDrawableAspect;->aspectOf()Lcom/lge/launcher3/util/FastBitmapDrawableAspect;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v0, v3}, Lcom/lge/launcher3/theme/LGThemeInfo;->createConstructorFastBitmapDrawable_aroundBody5$advice(Lcom/lge/launcher3/theme/LGThemeInfo;Landroid/graphics/Bitmap;Lcom/lge/launcher3/util/FastBitmapDrawableAspect;Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/lge/launcher3/util/IFastBitmapDrawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 628
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 629
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3a} :catch_3b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_3a} :catch_41

    goto :goto_9

    .line 633
    :catch_3b
    move-exception v0

    .line 634
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3f
    :goto_3f
    move-object v0, v1

    .line 639
    goto :goto_9

    .line 635
    :catch_41
    move-exception v0

    .line 636
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_3f
.end method

.method private getShortcutBGIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v2, -0x1

    .line 590
    if-nez p1, :cond_5

    move v0, v2

    .line 608
    :goto_4
    return v0

    .line 594
    :cond_5
    const-string v0, "BG"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 595
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mChangedShortcutIconBGList:Ljava/util/ArrayList;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mChangedShortcutIconBGList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_23

    .line 596
    const/4 v0, 0x0

    move v1, v0

    :goto_1b
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mChangedShortcutIconBGList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_25

    :cond_23
    move v0, v2

    .line 608
    goto :goto_4

    .line 597
    :cond_25
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mChangedShortcutIconBGList:Ljava/util/ArrayList;

    .line 598
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/LGThemeInfo$ChangedShortcutInfo;

    .line 599
    if-eqz v0, :cond_3e

    iget-object v3, v0, Lcom/lge/launcher3/theme/LGThemeInfo$ChangedShortcutInfo;->mComponentName:Ljava/lang/String;

    if-eqz v3, :cond_3e

    .line 600
    iget-object v3, v0, Lcom/lge/launcher3/theme/LGThemeInfo$ChangedShortcutInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 601
    iget v0, v0, Lcom/lge/launcher3/theme/LGThemeInfo$ChangedShortcutInfo;->mIndex:I

    goto :goto_4

    .line 596
    :cond_3e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b
.end method

.method private initRank()V
    .registers 3

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    const-string v1, "com.lge.launcher2.theme.lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1011
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    const-string v1, "com.lge.launcher2.theme.tim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1012
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    const-string v1, "com.lge.launcher2.theme.z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1013
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    const-string v1, "com.lge.launcher2.theme.isai"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1014
    :cond_28
    iget v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mRank:I

    const v1, 0x186a0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mRank:I

    .line 1024
    :cond_30
    :goto_30
    return-void

    .line 1015
    :cond_31
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    const-string v1, "com.lge.launcher2.theme.optimus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1016
    iget v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mRank:I

    add-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mRank:I

    goto :goto_30

    .line 1017
    :cond_42
    iget-boolean v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIsSystem:Z

    if-eqz v0, :cond_4d

    .line 1018
    iget v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mRank:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mRank:I

    goto :goto_30

    .line 1019
    :cond_4d
    iget-boolean v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIsInstalled:Z

    if-eqz v0, :cond_58

    .line 1020
    iget v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mRank:I

    add-int/lit8 v0, v0, -0x64

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mRank:I

    goto :goto_30

    .line 1021
    :cond_58
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    const-string v1, "com.lge.themepark.theme_plus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1022
    iget v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mRank:I

    add-int/lit16 v0, v0, -0x3e8

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mRank:I

    goto :goto_30
.end method

.method private makeBGIcon(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)Landroid/graphics/drawable/Drawable;
    .registers 16

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide v6, 0x3fe4cccccccccccdL    # 0.65

    const/4 v0, 0x0

    .line 549
    const/4 v1, 0x0

    .line 551
    if-eqz p1, :cond_1b

    .line 552
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 553
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 552
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 554
    if-nez v2, :cond_1c

    .line 586
    :cond_1b
    :goto_1b
    return-object v0

    .line 557
    :cond_1c
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 560
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 561
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 559
    invoke-static {p3, v3, v4, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 563
    if-eqz v3, :cond_1b

    .line 564
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 565
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 566
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 565
    invoke-static {p1, v5, v6, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 567
    if-eqz v5, :cond_70

    .line 568
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 569
    invoke-virtual {v4, v5, v8, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 571
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 572
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v1, v6

    int-to-float v1, v1

    .line 570
    invoke-virtual {v4, v3, v5, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 575
    :cond_70
    new-instance v1, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;

    invoke-direct {v1, p0, p2, v0}, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;-><init>(Lcom/lge/launcher3/theme/LGThemeInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-static {}, Lcom/lge/launcher3/util/FastBitmapDrawableAspect;->aspectOf()Lcom/lge/launcher3/util/FastBitmapDrawableAspect;

    move-result-object v3

    invoke-static {p0, v2, v3, v2, v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->createConstructorFastBitmapDrawable_aroundBody3$advice(Lcom/lge/launcher3/theme/LGThemeInfo;Landroid/graphics/Bitmap;Lcom/lge/launcher3/util/FastBitmapDrawableAspect;Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/lge/launcher3/util/IFastBitmapDrawable;

    move-result-object v0

    .line 576
    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, v1, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 578
    if-nez p4, :cond_8a

    if-eqz p5, :cond_8a

    .line 579
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconBGCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    :cond_8a
    iget-object v0, v1, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1b
.end method

.method private makeCalendarIcon(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/high16 v7, -0x1000000

    const/4 v6, 0x0

    .line 283
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarInfo:Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;

    if-nez v0, :cond_e

    .line 284
    new-instance v0, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;-><init>(Lcom/lge/launcher3/theme/LGThemeInfo;)V

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarInfo:Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;

    .line 287
    :cond_e
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarInfo:Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;

    .line 290
    const/4 v1, 0x0

    :try_start_11
    const-string v2, "dayTextColor"

    invoke-interface {p1, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 289
    iput v1, v0, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDayTextColor:I

    .line 292
    const/4 v1, 0x0

    const-string v2, "dateTextColor"

    invoke-interface {p1, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 291
    iput v1, v0, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDateTextColor:I

    .line 293
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    .line 294
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    .line 295
    const/4 v3, 0x0

    const-string v4, "dayTextSize"

    invoke-interface {p1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dimen"

    .line 296
    iget-object v5, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 294
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 293
    iput v1, v0, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDayTextSize:I

    .line 297
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    .line 298
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    .line 299
    const/4 v3, 0x0

    const-string v4, "dayOffsetX"

    invoke-interface {p1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dimen"

    iget-object v5, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 298
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 297
    iput v1, v0, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDayTextXoffset:I

    .line 300
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    .line 301
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    .line 302
    const/4 v3, 0x0

    const-string v4, "dayOffsetY"

    invoke-interface {p1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dimen"

    iget-object v5, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 301
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 300
    iput v1, v0, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDayTextYoffset:I

    .line 303
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    .line 304
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    .line 305
    const/4 v3, 0x0

    const-string v4, "dateTextSize"

    invoke-interface {p1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dimen"

    .line 306
    iget-object v5, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 304
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 303
    iput v1, v0, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDateTextSize:I

    .line 307
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    .line 308
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    .line 309
    const/4 v3, 0x0

    const-string v4, "dateOffsetX"

    invoke-interface {p1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dimen"

    .line 310
    iget-object v5, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 308
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 307
    iput v1, v0, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDateTextXoffset:I

    .line 311
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    .line 312
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    .line 313
    const/4 v3, 0x0

    const-string v4, "dateOffsetY"

    invoke-interface {p1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dimen"

    .line 314
    iget-object v5, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 312
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 311
    iput v1, v0, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDateTextYoffset:I
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_c0} :catch_c1

    .line 325
    :goto_c0
    return-void

    .line 316
    :catch_c1
    move-exception v1

    iput v7, v0, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDayTextColor:I

    .line 317
    iput v7, v0, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDateTextColor:I

    .line 318
    iput v6, v0, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDayTextSize:I

    .line 319
    iput v6, v0, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDayTextXoffset:I

    .line 320
    iput v6, v0, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDayTextYoffset:I

    .line 321
    iput v6, v0, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDateTextSize:I

    .line 322
    iput v6, v0, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDateTextXoffset:I

    .line 323
    iput v6, v0, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDateTextYoffset:I

    goto :goto_c0
.end method

.method private makeCalendarInfo(Landroid/content/res/XmlResourceParser;)Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 332
    new-instance v3, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;

    invoke-direct {v3, p0}, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;-><init>(Lcom/lge/launcher3/theme/LGThemeInfo;)V

    .line 334
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v4

    move v0, v1

    .line 335
    :goto_17
    if-lt v0, v4, :cond_1a

    .line 374
    return-object v3

    .line 336
    :cond_1a
    invoke-interface {p1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 337
    const-string v6, "draw_text"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 338
    invoke-interface {p1, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(IZ)Z

    move-result v5

    iput-boolean v5, v3, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->bDrawText:Z

    .line 335
    :cond_2c
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 339
    :cond_2f
    const-string v6, "image"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 340
    invoke-interface {p1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconFileName:Ljava/lang/String;

    .line 341
    iget-object v5, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconFileName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_empty"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 342
    const-string v7, "drawable"

    iget-object v8, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 341
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 343
    if-eqz v5, :cond_2c

    .line 344
    iget-object v6, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mLaucnherResources:Landroid/content/res/Resources;

    const v7, 0x7f090019

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 345
    iget-object v7, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5, v6, v6}, Lcom/lge/launcher3/theme/LGThemeInfo;->scaleDrawable(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 347
    iput-object v5, v3, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mCalendarDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2c

    .line 349
    :cond_74
    const-string v6, "day_text_size"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_89

    .line 350
    invoke-interface {p1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 351
    mul-float/2addr v5, v2

    float-to-int v5, v5

    .line 350
    iput v5, v3, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDayTextSize:I

    goto :goto_2c

    .line 352
    :cond_89
    const-string v6, "date_text_size"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 353
    invoke-interface {p1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 354
    mul-float/2addr v5, v2

    float-to-int v5, v5

    .line 353
    iput v5, v3, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDateTextSize:I

    goto :goto_2c

    .line 355
    :cond_9e
    const-string v6, "day_x_offset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 356
    invoke-interface {p1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 357
    mul-float/2addr v5, v2

    float-to-int v5, v5

    .line 356
    iput v5, v3, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDayTextXoffset:I

    goto/16 :goto_2c

    .line 358
    :cond_b4
    const-string v6, "day_y_offset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 359
    invoke-interface {p1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 360
    mul-float/2addr v5, v2

    float-to-int v5, v5

    .line 359
    iput v5, v3, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDayTextYoffset:I

    goto/16 :goto_2c

    .line 361
    :cond_ca
    const-string v6, "date_x_offset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e0

    .line 362
    invoke-interface {p1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 363
    mul-float/2addr v5, v2

    float-to-int v5, v5

    .line 362
    iput v5, v3, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDateTextXoffset:I

    goto/16 :goto_2c

    .line 364
    :cond_e0
    const-string v6, "date_y_offset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f6

    .line 365
    invoke-interface {p1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 366
    mul-float/2addr v5, v2

    float-to-int v5, v5

    .line 365
    iput v5, v3, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDateTextYoffset:I

    goto/16 :goto_2c

    .line 367
    :cond_f6
    const-string v6, "day_text_color"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10a

    .line 368
    invoke-interface {p1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/launcher3/theme/LGThemeInfo;->toRGB(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDayTextColor:I

    goto/16 :goto_2c

    .line 369
    :cond_10a
    const-string v6, "date_text_color"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 370
    invoke-interface {p1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/launcher3/theme/LGThemeInfo;->toRGB(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->mIconDateTextColor:I

    goto/16 :goto_2c
.end method

.method private makeDownloadThemePreview(II)Landroid/graphics/drawable/Drawable;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 936
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007d

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/lge/launcher3/theme/LGThemeInfo;->getBitmap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 937
    invoke-static {}, Lcom/lge/launcher3/util/FastBitmapDrawableAspect;->aspectOf()Lcom/lge/launcher3/util/FastBitmapDrawableAspect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v0, v2}, Lcom/lge/launcher3/theme/LGThemeInfo;->createConstructorFastBitmapDrawable_aroundBody9$advice(Lcom/lge/launcher3/theme/LGThemeInfo;Landroid/graphics/Bitmap;Lcom/lge/launcher3/util/FastBitmapDrawableAspect;Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/lge/launcher3/util/IFastBitmapDrawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 938
    invoke-virtual {v0, v3, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 939
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 940
    return-object v0
.end method

.method private makeOptimusThemePreview(II)Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 944
    const-string v1, "ThemePreviewWork"

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/launcher3/theme/LGThemeInfo;->getDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 946
    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_WALLPAPER_IN_OPTIMUS_THEME_RESOURCE_FILE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 947
    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v1

    if-nez v1, :cond_17

    .line 948
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/theme/LGThemeInfo;->getDefaultWallpaper(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 953
    :goto_14
    if-nez v1, :cond_1e

    .line 968
    :goto_16
    return-object v0

    .line 950
    :cond_17
    const-string v1, "Wallpaper"

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/launcher3/theme/LGThemeInfo;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_14

    .line 957
    :cond_1e
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 959
    if-eqz v2, :cond_2b

    .line 960
    invoke-virtual {v2, v4, v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 961
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 964
    :cond_2b
    invoke-static {}, Lcom/lge/launcher3/util/FastBitmapDrawableAspect;->aspectOf()Lcom/lge/launcher3/util/FastBitmapDrawableAspect;

    move-result-object v2

    invoke-static {p0, v1, v2, v1, v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->createConstructorFastBitmapDrawable_aroundBody11$advice(Lcom/lge/launcher3/theme/LGThemeInfo;Landroid/graphics/Bitmap;Lcom/lge/launcher3/util/FastBitmapDrawableAspect;Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/lge/launcher3/util/IFastBitmapDrawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 965
    invoke-virtual {v0, v4, v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 966
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    goto :goto_16
.end method

.method private parsingXML(ILandroid/content/res/XmlResourceParser;)V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 173
    :goto_2
    if-ne p1, v6, :cond_5

    .line 229
    return-void

    .line 174
    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1c

    .line 175
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_10e

    .line 217
    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mThemeResHash:Ljava/util/HashMap;

    invoke-interface {p2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_1c
    :try_start_1c
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1f} :catch_d2
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_f0

    move-result p1

    goto :goto_2

    .line 176
    :sswitch_21
    const-string v1, "IconBG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 201
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconBGImageList:Ljava/util/ArrayList;

    invoke-interface {p2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 176
    :sswitch_33
    const-string v1, "WorkspaceAppOutLineEffect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 192
    invoke-interface {p2, v5, v5}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mWorkspaceAppOutLineEffect:Z

    goto :goto_13

    .line 176
    :sswitch_42
    const-string v1, "CalendarInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 204
    invoke-direct {p0, p2}, Lcom/lge/launcher3/theme/LGThemeInfo;->makeCalendarInfo(Landroid/content/res/XmlResourceParser;)Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarInfo:Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;

    goto :goto_13

    .line 176
    :sswitch_51
    const-string v1, "Label"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 189
    invoke-interface {p2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mLabel:Ljava/lang/String;

    goto :goto_13

    .line 176
    :sswitch_60
    const-string v1, "AppIcon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 195
    new-instance v1, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;

    .line 196
    invoke-interface {p2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-interface {p2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-direct {v1, p0, v2, v3}, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;-><init>(Lcom/lge/launcher3/theme/LGThemeInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 176
    :sswitch_7b
    const-string v1, "IconResource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 178
    new-instance v1, Lcom/lge/launcher3/theme/LGIconResource;

    invoke-direct {v1}, Lcom/lge/launcher3/theme/LGIconResource;-><init>()V

    .line 179
    const/16 v2, 0xa

    invoke-interface {p2, v5, v2}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I

    move-result v2

    .line 180
    invoke-interface {p2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {v1, v2}, Lcom/lge/launcher3/theme/LGIconResource;->setIndex(I)V

    .line 182
    invoke-virtual {v1, v3}, Lcom/lge/launcher3/theme/LGIconResource;->setResourceName(Ljava/lang/String;)V

    .line 183
    iget-object v4, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIconResourceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 184
    const-string v1, "lg_launcher_ic_calendar_empty"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 185
    iput v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarIndex:I

    goto/16 :goto_13

    .line 176
    :sswitch_a9
    const-string v1, "WidgetInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 210
    new-instance v1, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;

    invoke-interface {p2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-interface {p2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-direct {v1, p0, v2, v3}, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;-><init>(Lcom/lge/launcher3/theme/LGThemeInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mWidgetInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    .line 176
    :sswitch_c5
    const-string v1, "CalendarIconSmall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 207
    invoke-direct {p0, p2, v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->makeCalendarIcon(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 221
    :catch_d2
    move-exception v0

    .line 222
    const-string v1, "LGHome2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parsingXML XmlPullParserException = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_2

    .line 224
    :catch_f0
    move-exception v0

    .line 225
    const-string v1, "LGHome2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parsingXML IOException = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 176
    :sswitch_data_10e
    .sparse-switch
        -0x7dc70962 -> :sswitch_21
        -0x76197579 -> :sswitch_33
        -0xb3ea6d4 -> :sswitch_42
        0x45c8ed4 -> :sswitch_51
        0x33e0ca1a -> :sswitch_60
        0x56df2fc7 -> :sswitch_7b
        0x647d4d32 -> :sswitch_a9
        0x6ebe7650 -> :sswitch_c5
    .end sparse-switch
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    .line 459
    if-nez p0, :cond_4

    .line 460
    const/4 v0, 0x0

    .line 463
    :goto_3
    return-object v0

    :cond_4
    float-to-int v0, p1

    float-to-int v1, p2

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3
.end method

.method public static scaleDrawable(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/drawable/Drawable;
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 467
    if-nez p0, :cond_7

    move-object p0, v0

    .line 499
    :cond_6
    :goto_6
    return-object p0

    .line 471
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1d

    .line 472
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    .line 477
    :cond_1d
    instance-of v1, p0, Lcom/lge/launcher3/util/IFastBitmapDrawable;

    if-eqz v1, :cond_33

    .line 478
    check-cast p0, Lcom/lge/launcher3/util/IFastBitmapDrawable;

    invoke-interface {p0}, Lcom/lge/launcher3/util/IFastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 479
    if-eqz v1, :cond_61

    .line 480
    float-to-int v2, p1

    float-to-int v3, p2

    invoke-static {v1, v2, v3, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 492
    :goto_2f
    if-nez v1, :cond_50

    move-object p0, v0

    .line 493
    goto :goto_6

    .line 483
    :cond_33
    float-to-int v1, p1

    float-to-int v2, p2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 484
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 486
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 487
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 488
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 489
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_2f

    .line 495
    :cond_50
    invoke-static {}, Lcom/lge/launcher3/util/FastBitmapDrawableAspect;->aspectOf()Lcom/lge/launcher3/util/FastBitmapDrawableAspect;

    move-result-object v2

    invoke-static {v1, v2, v1, v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->createConstructorFastBitmapDrawable_aroundBody1$advice(Landroid/graphics/Bitmap;Lcom/lge/launcher3/util/FastBitmapDrawableAspect;Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/lge/launcher3/util/IFastBitmapDrawable;

    move-result-object v0

    .line 496
    if-eqz v0, :cond_5d

    .line 497
    invoke-interface {v0, v7}, Lcom/lge/launcher3/util/IFastBitmapDrawable;->setFilterBitmap(Z)V

    .line 499
    :cond_5d
    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object p0, v0

    goto :goto_6

    :cond_61
    move-object v1, v0

    goto :goto_2f
.end method

.method private unLoadIconCache()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 754
    iget-boolean v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconCacheLoaded:Z

    if-nez v0, :cond_7

    .line 777
    :goto_6
    return-void

    .line 758
    :cond_7
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 759
    :goto_e
    if-lt v1, v3, :cond_1c

    .line 767
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mWidgetInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 768
    :goto_17
    if-lt v1, v3, :cond_33

    .line 776
    iput-boolean v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconCacheLoaded:Z

    goto :goto_6

    .line 760
    :cond_1c
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;

    .line 761
    iget-object v4, v0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2f

    .line 762
    iget-object v4, v0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 763
    iput-object v5, v0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 759
    :cond_2f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 769
    :cond_33
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mWidgetInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;

    .line 770
    iget-object v4, v0, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;->mWidgetPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_46

    .line 771
    iget-object v4, v0, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;->mWidgetPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 772
    iput-object v5, v0, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;->mWidgetPreview:Landroid/graphics/drawable/Drawable;

    .line 768
    :cond_46
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17
.end method

.method private unLoadResourceDrawable()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 780
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIconResourceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIconResourceLoaded:Z

    if-nez v0, :cond_a

    .line 793
    :cond_9
    :goto_9
    return-void

    .line 784
    :cond_a
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIconResourceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 785
    :goto_11
    if-lt v1, v3, :cond_16

    .line 792
    iput-boolean v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIconResourceLoaded:Z

    goto :goto_9

    .line 786
    :cond_16
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIconResourceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/LGIconResource;

    .line 787
    if-eqz v0, :cond_23

    .line 788
    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGIconResource;->clearDrawable()V

    .line 785
    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11
.end method


# virtual methods
.method public changeWallPaper()V
    .registers 5

    .prologue
    .line 414
    const-string v0, "Wallpaper"

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->getResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mThemePackageContext:Landroid/content/Context;

    if-nez v1, :cond_11

    .line 456
    :cond_10
    :goto_10
    return-void

    .line 422
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    const-string v2, "com.lge.launcher2.theme.optimus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 423
    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_WALLPAPER_IN_OPTIMUS_THEME_RESOURCE_FILE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 424
    invoke-virtual {v1}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v1

    if-nez v1, :cond_7c

    .line 425
    new-instance v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;-><init>(Landroid/content/Context;)V

    .line 427
    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->getList()Ljava/util/List;

    move-result-object v2

    .line 428
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_35
    if-gez v1, :cond_61

    .line 434
    if-eqz v2, :cond_10

    .line 435
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    .line 437
    iget v2, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resImage:I

    if-eqz v2, :cond_3d

    .line 438
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mContext:Landroid/content/Context;

    .line 439
    iget-object v2, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x2

    .line 438
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 440
    iget v0, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resImage:I

    .line 438
    invoke-static {v1, v0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperSwitchUtil;->changeWallpaper(Landroid/content/Context;I)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_5b} :catch_5c

    goto :goto_10

    .line 453
    :catch_5c
    move-exception v0

    .line 454
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10

    .line 429
    :cond_61
    :try_start_61
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    iget v0, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->resImage:I

    if-nez v0, :cond_78

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;

    iget-object v0, v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$LGWallpaperItem;->bitmapDrawableRes:Landroid/graphics/Bitmap;

    if-nez v0, :cond_78

    .line 430
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 428
    :cond_78
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_35

    .line 447
    :cond_7c
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    .line 448
    const-string v2, "drawable"

    iget-object v3, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 447
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 449
    if-eqz v0, :cond_10

    .line 450
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mThemePackageContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperSwitchUtil;->changeWallpaper(Landroid/content/Context;I)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_8d} :catch_5c

    goto :goto_10
.end method

.method public getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 685
    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_8

    .line 700
    :cond_7
    :goto_7
    return-object v0

    .line 691
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    const-string v2, "drawable"

    .line 692
    iget-object v3, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 691
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 693
    if-eqz v1, :cond_7

    .line 694
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1b

    move-result-object v0

    goto :goto_7

    .line 696
    :catch_1b
    move-exception v1

    .line 697
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getRank()I
    .registers 2

    .prologue
    .line 1006
    iget v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mRank:I

    return v0
.end method

.method public getResourceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 394
    if-nez p1, :cond_4

    .line 395
    const/4 v0, 0x0

    .line 398
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mThemeResHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3
.end method

.method public getShortcutIconBG(Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)Landroid/graphics/drawable/Drawable;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 506
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 542
    :cond_5
    :goto_5
    return-object v1

    .line 510
    :cond_6
    if-nez p3, :cond_1b

    if-eqz p4, :cond_1b

    .line 511
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconBGCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;

    .line 512
    if-eqz v0, :cond_1b

    iget-object v2, v0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1b

    .line 513
    iget-object v1, v0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 517
    :cond_1b
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconBGImageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconBGImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_63

    .line 518
    const-string v0, "BG"

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->getShortcutBGIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 519
    const/4 v2, -0x1

    if-ne v0, v2, :cond_6d

    .line 520
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconBGImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 521
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconBGImageList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mBGImageCount:I

    rem-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 522
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 523
    if-eqz v0, :cond_4d

    .line 524
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 526
    :cond_4d
    if-eqz v1, :cond_63

    .line 527
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mChangedShortcutIconBGList:Ljava/util/ArrayList;

    new-instance v3, Lcom/lge/launcher3/theme/LGThemeInfo$ChangedShortcutInfo;

    .line 528
    iget v4, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mBGImageCount:I

    rem-int v2, v4, v2

    invoke-direct {v3, p0, p1, v2}, Lcom/lge/launcher3/theme/LGThemeInfo$ChangedShortcutInfo;-><init>(Lcom/lge/launcher3/theme/LGThemeInfo;Ljava/lang/String;I)V

    .line 527
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    iget v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mBGImageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mBGImageCount:I

    :cond_63
    :goto_63
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 542
    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/theme/LGThemeInfo;->makeBGIcon(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_5

    .line 532
    :cond_6d
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconBGImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 533
    if-eqz v0, :cond_63

    .line 534
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 535
    if-eqz v0, :cond_63

    .line 536
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_63
.end method

.method public declared-synchronized getWidgetPreview(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 878
    monitor-enter p0

    if-eqz p1, :cond_c

    :try_start_4
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mWidgetPreviewCache:Ljava/util/HashMap;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_3d

    if-nez v0, :cond_f

    :cond_c
    move-object v0, v1

    .line 896
    :goto_d
    monitor-exit p0

    return-object v0

    .line 882
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 883
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    const-string v2, "com.lge.launcher2.theme.optimus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move-object v0, v1

    .line 884
    goto :goto_d

    .line 887
    :cond_1f
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mWidgetPreviewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2a

    .line 888
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/LGThemeInfo;->loadIconCache()V

    .line 891
    :cond_2a
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mWidgetPreviewCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;

    .line 892
    if-eqz v0, :cond_3b

    iget-object v2, v0, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;->mWidgetPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3b

    .line 893
    iget-object v0, v0, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;->mWidgetPreview:Landroid/graphics/drawable/Drawable;
    :try_end_3a
    .catchall {:try_start_f .. :try_end_3a} :catchall_3d

    goto :goto_d

    :cond_3b
    move-object v0, v1

    .line 896
    goto :goto_d

    .line 878
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadIconCache()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 704
    iget-boolean v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconCacheLoaded:Z

    if-eqz v0, :cond_6

    .line 751
    :goto_5
    return-void

    .line 708
    :cond_6
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 710
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 711
    :goto_12
    if-lt v2, v3, :cond_25

    .line 729
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mWidgetPreviewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 731
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mWidgetInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 732
    :goto_1f
    if-lt v1, v2, :cond_5b

    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconCacheLoaded:Z

    goto :goto_5

    .line 712
    :cond_25
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;

    .line 713
    iget-object v4, v0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mShortcutName:Ljava/lang/String;

    if-eqz v4, :cond_52

    iget-object v4, v0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mShortcutImage:Ljava/lang/String;

    if-eqz v4, :cond_52

    .line 715
    :try_start_35
    iget-object v4, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    iget-object v5, v0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mShortcutImage:Ljava/lang/String;

    .line 716
    const-string v6, "drawable"

    iget-object v7, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 715
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 718
    if-eqz v4, :cond_52

    .line 719
    iget-object v5, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 720
    iput-object v4, v0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 721
    iget-object v4, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconCache:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/lge/launcher3/theme/LGThemeInfo$ShortcutIconInfo;->mShortcutName:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_52} :catch_56

    .line 711
    :cond_52
    :goto_52
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    .line 723
    :catch_56
    move-exception v0

    .line 724
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_52

    .line 733
    :cond_5b
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mWidgetInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;

    .line 734
    iget-object v3, v0, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;->mWidgetName:Ljava/lang/String;

    if-eqz v3, :cond_88

    iget-object v3, v0, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;->mWidgetImage:Ljava/lang/String;

    if-eqz v3, :cond_88

    .line 736
    :try_start_6b
    iget-object v3, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    iget-object v4, v0, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;->mWidgetImage:Ljava/lang/String;

    .line 737
    const-string v5, "drawable"

    iget-object v6, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 736
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 739
    if-eqz v3, :cond_88

    .line 740
    iget-object v4, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 741
    iput-object v3, v0, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;->mWidgetPreview:Landroid/graphics/drawable/Drawable;

    .line 742
    iget-object v3, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mWidgetPreviewCache:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/lge/launcher3/theme/LGThemeInfo$WidgetInfo;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_88} :catch_8c

    .line 732
    :cond_88
    :goto_88
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f

    .line 744
    :catch_8c
    move-exception v0

    .line 745
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_88
.end method

.method public makeCalendarIcon(Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 796
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 823
    :cond_5
    :goto_5
    return-void

    .line 800
    :cond_6
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    .line 801
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 802
    iput-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarIcon:Landroid/graphics/drawable/Drawable;

    .line 805
    :cond_11
    if-eqz p1, :cond_5

    .line 809
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    const-string v1, "com.lge.launcher2.theme.optimus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 810
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarInfo:Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarInfo:Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;

    iget-boolean v0, v0, Lcom/lge/launcher3/theme/LGThemeInfo$CalendarInfo;->bDrawText:Z

    if-eqz v0, :cond_5

    .line 815
    :cond_27
    invoke-static {}, Lcom/lge/launcher3/util/FastBitmapDrawableAspect;->aspectOf()Lcom/lge/launcher3/util/FastBitmapDrawableAspect;

    move-result-object v0

    invoke-static {p0, p1, v0, p1, v2}, Lcom/lge/launcher3/theme/LGThemeInfo;->createConstructorFastBitmapDrawable_aroundBody7$advice(Lcom/lge/launcher3/theme/LGThemeInfo;Landroid/graphics/Bitmap;Lcom/lge/launcher3/util/FastBitmapDrawableAspect;Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/lge/launcher3/util/IFastBitmapDrawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarIcon:Landroid/graphics/drawable/Drawable;

    .line 817
    iget v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 818
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIconResourceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 819
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIconResourceList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/LGIconResource;

    .line 820
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/theme/LGIconResource;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 821
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIconResourceList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarIndex:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method public makeThemePreview(II)Landroid/graphics/drawable/Drawable;
    .registers 9

    .prologue
    const/4 v1, -0x1

    .line 904
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 908
    if-ne p1, v1, :cond_2a

    if-ne p2, v1, :cond_2a

    .line 909
    sget v0, Lcom/lge/launcher3/theme/LGThemeInfo;->sPreViewWidth:I

    if-ne v0, v1, :cond_26

    sget v0, Lcom/lge/launcher3/theme/LGThemeInfo;->sPreViewHeight:I

    if-ne v0, v1, :cond_26

    .line 910
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mContext:Landroid/content/Context;

    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 912
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sput v1, Lcom/lge/launcher3/theme/LGThemeInfo;->sPreViewHeight:I

    .line 913
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sput v0, Lcom/lge/launcher3/theme/LGThemeInfo;->sPreViewWidth:I

    .line 915
    :cond_26
    sget p1, Lcom/lge/launcher3/theme/LGThemeInfo;->sPreViewWidth:I

    .line 916
    sget p2, Lcom/lge/launcher3/theme/LGThemeInfo;->sPreViewHeight:I

    .line 919
    :cond_2a
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    const-string v1, "com.lge.launcher2.theme.optimus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 920
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/theme/LGThemeInfo;->makeOptimusThemePreview(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 927
    :goto_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 929
    const-string v1, "PERFORMANCE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Elapsed time for making Theme Preview ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 930
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 929
    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    return-object v0

    .line 921
    :cond_65
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    const-string v1, "com.lge.themepark.theme_plus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 922
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/theme/LGThemeInfo;->makeDownloadThemePreview(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_38

    .line 924
    :cond_74
    const-string v0, "ThemePreviewWork"

    invoke-direct {p0, v0, p1, p2}, Lcom/lge/launcher3/theme/LGThemeInfo;->getDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_38
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 826
    invoke-direct {p0}, Lcom/lge/launcher3/theme/LGThemeInfo;->unLoadIconCache()V

    .line 827
    invoke-direct {p0}, Lcom/lge/launcher3/theme/LGThemeInfo;->unLoadResourceDrawable()V

    .line 829
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconImageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    .line 830
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 831
    iput-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconImageList:Ljava/util/ArrayList;

    .line 834
    :cond_12
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mWidgetInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    .line 835
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mWidgetInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 836
    iput-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mWidgetInfoList:Ljava/util/ArrayList;

    .line 839
    :cond_1d
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconBGImageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_28

    .line 840
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconBGImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 841
    iput-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconBGImageList:Ljava/util/ArrayList;

    .line 844
    :cond_28
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mChangedShortcutIconBGList:Ljava/util/ArrayList;

    if-eqz v0, :cond_33

    .line 845
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mChangedShortcutIconBGList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 846
    iput-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mChangedShortcutIconBGList:Ljava/util/ArrayList;

    .line 849
    :cond_33
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIconResourceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3e

    .line 850
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIconResourceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 851
    iput-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIconResourceList:Ljava/util/ArrayList;

    .line 854
    :cond_3e
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconBGCache:Ljava/util/HashMap;

    if-eqz v0, :cond_49

    .line 855
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconBGCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 856
    iput-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconBGCache:Ljava/util/HashMap;

    .line 859
    :cond_49
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconCache:Ljava/util/HashMap;

    if-eqz v0, :cond_54

    .line 860
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 861
    iput-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mShortcutIconCache:Ljava/util/HashMap;

    .line 864
    :cond_54
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mWidgetPreviewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_5f

    .line 865
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mWidgetPreviewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 866
    iput-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mWidgetPreviewCache:Ljava/util/HashMap;

    .line 869
    :cond_5f
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6a

    .line 870
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 871
    iput-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarIcon:Landroid/graphics/drawable/Drawable;

    .line 874
    :cond_6a
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mCalendarIndex:I

    .line 875
    return-void
.end method

.method public readThemeXML()V
    .registers 5

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mLaucnherResources:Landroid/content/res/Resources;

    if-nez v0, :cond_d

    .line 276
    :cond_c
    :goto_c
    return-void

    .line 238
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    const-string v1, "theme_resources"

    .line 239
    const-string v2, "xml"

    iget-object v3, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 238
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 240
    if-eqz v0, :cond_c

    .line 244
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_c

    .line 249
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    .line 251
    new-instance v2, Lcom/lge/launcher3/theme/LGIconResource;

    invoke-direct {v2}, Lcom/lge/launcher3/theme/LGIconResource;-><init>()V

    .line 252
    iget-object v3, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIconResourceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_49

    .line 255
    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    const-string v3, "com.lge.launcher2.theme.optimus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 256
    new-instance v2, Lcom/lge/launcher3/theme/LGIconResource;

    invoke-direct {v2}, Lcom/lge/launcher3/theme/LGIconResource;-><init>()V

    .line 257
    iget-object v3, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mIconResourceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_49
    invoke-direct {p0, v1, v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->parsingXML(ILandroid/content/res/XmlResourceParser;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_4c} :catch_6a

    .line 267
    :goto_4c
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 268
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 269
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    const-string v1, "com.lge.launcher2.theme.optimus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 270
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mContext:Landroid/content/Context;

    const v1, 0x7f0f008a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mLabel:Ljava/lang/String;

    goto :goto_c

    .line 262
    :catch_6a
    move-exception v0

    .line 263
    const-string v1, "LGHome2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReadXML exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c

    .line 272
    :cond_87
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/theme/LGThemeInfo;->getAppNameFromPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/theme/LGThemeInfo;->mLabel:Ljava/lang/String;

    goto/16 :goto_c
.end method

.method public toRGB(Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v4, 0x6

    const/4 v2, 0x4

    const/4 v1, 0x2

    const/16 v3, 0x10

    .line 402
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v4, :cond_d

    .line 403
    const/4 v0, -0x1

    .line 409
    :goto_c
    return v0

    .line 406
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 410
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 409
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_c
.end method
