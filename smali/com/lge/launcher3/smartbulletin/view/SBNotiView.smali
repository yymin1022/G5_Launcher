.class public Lcom/lge/launcher3/smartbulletin/view/SBNotiView;
.super Landroid/widget/ImageView;
.source "SBNotiView.java"


# static fields
.field private static sImageHeight:I

.field private static sImageWidth:I


# instance fields
.field private mNoti:Lcom/lge/launcher3/smartbulletin/view/SBNoti;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .prologue
    const v2, 0x7f0900e0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;->sImageWidth:I

    .line 51
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;->sImageHeight:I

    .line 52
    return-void
.end method

.method private static getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 112
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 115
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 116
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 119
    const v4, -0xbdbdbe

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 121
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    int-to-float v5, v4

    int-to-float v6, v4

    add-int/lit8 v4, v4, -0x8

    int-to-float v4, v4

    invoke-virtual {v1, v5, v6, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 124
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 125
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 126
    return-object v0
.end method

.method private static getNotiIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 67
    if-eqz p1, :cond_b

    const-string v1, "android.resource://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 85
    :cond_b
    :goto_b
    return-object v0

    .line 70
    :cond_c
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 74
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 75
    const/4 v3, 0x1

    aget-object v3, v2, v3

    .line 76
    const/4 v4, 0x2

    aget-object v2, v2, v4

    .line 79
    :try_start_24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 80
    invoke-virtual {v4, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 81
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_35

    move-result-object v0

    goto :goto_b

    .line 82
    :catch_35
    move-exception v1

    .line 83
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method


# virtual methods
.method public equalsType(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 130
    if-nez p1, :cond_4

    .line 140
    :cond_3
    :goto_3
    return v0

    .line 134
    :cond_4
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;->mNoti:Lcom/lge/launcher3/smartbulletin/view/SBNoti;

    if-eqz v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;->mNoti:Lcom/lge/launcher3/smartbulletin/view/SBNoti;

    iget-object v1, v1, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mNotiType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public getNoti()Lcom/lge/launcher3/smartbulletin/view/SBNoti;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;->mNoti:Lcom/lge/launcher3/smartbulletin/view/SBNoti;

    return-object v0
.end method

.method public setNoti(Lcom/lge/launcher3/smartbulletin/view/SBNoti;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;->mNoti:Lcom/lge/launcher3/smartbulletin/view/SBNoti;

    .line 56
    return-void
.end method

.method public setWidgetDrawableRes(Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;->getNotiIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 90
    if-nez v0, :cond_36

    .line 91
    iget-object v1, p1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 92
    iget-object v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 93
    iget v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-lez v3, :cond_25

    .line 94
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    :cond_25
    if-nez v0, :cond_36

    .line 97
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 101
    :cond_36
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 102
    sget v2, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;->sImageWidth:I

    int-to-float v2, v2

    sget v3, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;->sImageHeight:I

    int-to-float v3, v3

    .line 101
    invoke-static {v1, v0, v2, v3}, Lcom/lge/launcher3/util/Utilities;->scaleBitmapDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 103
    if-eqz v0, :cond_53

    .line 104
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    :cond_53
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;->setTag(Ljava/lang/Object;)V

    .line 108
    return-void
.end method
