.class public Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;
.super Ljava/lang/Object;
.source "AppNotifierBadgeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final ICON_DAY_TEXT_COLOR:I = -0x1

.field private static sFontType:Landroid/graphics/Typeface;

.field private static sTextPaint:Landroid/graphics/Paint;


# instance fields
.field private mAppNotifierBadgeDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 32
    :try_start_1
    const-string v0, "/system/fonts/Roboto-Bold.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->sFontType:Landroid/graphics/Typeface;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_2a

    .line 37
    :goto_9
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->sTextPaint:Landroid/graphics/Paint;

    .line 38
    sget-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->sTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    sget-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->sTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 40
    sget-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->sTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    sget-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->sTextPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->sFontType:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 42
    return-void

    .line 34
    :catch_2a
    move-exception v0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->sFontType:Landroid/graphics/Typeface;

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public build(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    sget-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->sTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 46
    const/high16 v2, 0x7f090000

    .line 45
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 48
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->mAppNotifierBadgeDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_31

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    const v2, 0x7f020056

    const/4 v3, 0x0

    .line 49
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->mAppNotifierBadgeDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 53
    :cond_31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 54
    sget-object v2, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->sTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, p2, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 55
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_9d

    move v0, v1

    .line 57
    :goto_49
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 58
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 59
    iget-object v3, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->mAppNotifierBadgeDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v3, :cond_70

    .line 60
    iget-object v3, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->mAppNotifierBadgeDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setFilterBitmap(Z)V

    .line 61
    iget-object v3, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->mAppNotifierBadgeDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setDither(Z)V

    .line 62
    iget-object v3, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->mAppNotifierBadgeDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3, v4, v4, v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 63
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->mAppNotifierBadgeDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 65
    :cond_70
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v1, v3

    .line 67
    sget-object v3, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->sTextPaint:Landroid/graphics/Paint;

    .line 65
    invoke-virtual {v2, p2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 68
    new-instance v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable;-><init>(Landroid/content/res/Resources;Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;)V

    return-object v0

    .line 55
    :cond_9d
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_49
.end method
