.class public Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;
.super Landroid/widget/LinearLayout;
.source "SBProviderLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mBadgeLayout:Landroid/widget/LinearLayout;

.field private mCustomProviderBgColor:Z

.field private mCustomProviderTitleColor:Z

.field private mInfo:Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

.field private mIntent:Landroid/content/Intent;

.field private mNotiTime:J

.field private mProviderBgColor:I

.field private mProviderCollapseButton:Landroid/widget/ImageButton;

.field private mProviderTitle:Landroid/widget/TextView;

.field private mProviderTitleColor:I

.field private mSBScrollAnimation:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mCustomProviderBgColor:Z

    .line 46
    iput-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mCustomProviderTitleColor:Z

    .line 47
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mInfo:Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 50
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;)V

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mSBScrollAnimation:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;

    .line 51
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderCollapseButton:Landroid/widget/ImageButton;

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mNotiTime:J

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->runProviderActivity(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 265
    invoke-static {p0, p1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->sendIntentByBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getDefaultActivity(Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 181
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 182
    const-string v2, "smartbulletin_provider_default_activity"

    .line 183
    const-string v3, "string"

    .line 182
    invoke-virtual {v1, v2, v3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 185
    if-nez v2, :cond_18

    .line 197
    :goto_17
    return-object v0

    .line 188
    :cond_18
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 190
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 191
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 192
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2f

    move-object v0, v1

    .line 193
    goto :goto_17

    .line 194
    :catch_2f
    move-exception v1

    .line 195
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method

.method private runProviderActivity(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 120
    :goto_9
    return-void

    .line 116
    :catch_a
    move-exception v0

    .line 117
    sget-object v1, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->TAG:Ljava/lang/String;

    const-string v2, "onClick() provider title:  Can not find default activity"

    invoke-static {v1, v2}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method private static sendIntentByBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 266
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 268
    return-void
.end method

.method private setProviderCollapseButtonColor(I)V
    .registers 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 271
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200cb

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 273
    invoke-virtual {v1, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 274
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 275
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 276
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 277
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 278
    invoke-virtual {v3, v1, v7, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 279
    invoke-virtual {v3, v0, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 280
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 281
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderCollapseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 282
    return-void
.end method


# virtual methods
.method public addBadge(Lcom/lge/launcher3/smartbulletin/view/SBNoti;)V
    .registers 4

    .prologue
    .line 314
    iget-object v0, p1, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mComponentName:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mInfo:Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    invoke-virtual {v1}, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 324
    :goto_12
    return-void

    .line 318
    :cond_13
    iget-object v0, p1, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mNotiType:Ljava/lang/String;

    const-string v1, "ongoing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 319
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->addOnGoing(Lcom/lge/launcher3/smartbulletin/view/SBNoti;)V

    .line 323
    :cond_20
    :goto_20
    iget-wide v0, p1, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mTime:J

    iput-wide v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mNotiTime:J

    goto :goto_12

    .line 320
    :cond_25
    iget-object v0, p1, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mNotiType:Ljava/lang/String;

    const-string v1, "once"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 321
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->addNewBadge()V

    goto :goto_20
.end method

.method public addNewBadge()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    .line 286
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->removeAllBadge()V

    .line 287
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 288
    const v1, 0x7f0e000f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 289
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderTitleColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 293
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mBadgeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 294
    return-void
.end method

.method public addOnGoing(Lcom/lge/launcher3/smartbulletin/view/SBNoti;)V
    .registers 5

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->removeAllBadge()V

    .line 307
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04003f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 306
    check-cast v0, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;

    .line 308
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mInfo:Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    iget-object v2, p1, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mResUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;->setWidgetDrawableRes(Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, p1}, Lcom/lge/launcher3/smartbulletin/view/SBNotiView;->setNoti(Lcom/lge/launcher3/smartbulletin/view/SBNoti;)V

    .line 310
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mBadgeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 311
    return-void
.end method

.method public getCustomProviderBgColor()Z
    .registers 2

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mCustomProviderBgColor:Z

    return v0
.end method

.method public getCustomProviderTitleColor()Z
    .registers 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mCustomProviderTitleColor:Z

    return v0
.end method

.method public getNotiTime()J
    .registers 3

    .prologue
    .line 355
    iget-wide v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mNotiTime:J

    return-wide v0
.end method

.method public getProviderBgColor()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderBgColor:I

    return v0
.end method

.method public getProviderInfo()Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mInfo:Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    return-object v0
.end method

.method public getProviderTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getProviderTitleColor()I
    .registers 2

    .prologue
    .line 212
    iget v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderTitleColor:I

    return v0
.end method

.method public getSBScrollAnimation()Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mSBScrollAnimation:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$SBProviderScrollAnimation;

    return-object v0
.end method

.method public hasNotiView()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 345
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mBadgeLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_6

    .line 351
    :cond_5
    :goto_5
    return v0

    .line 348
    :cond_6
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mBadgeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 349
    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 72
    const v0, 0x7f0e00d8

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderTitle:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0e00d7

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$1;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$2;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$2;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;)V

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 98
    const v0, 0x7f0e00da

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderCollapseButton:Landroid/widget/ImageButton;

    .line 99
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderCollapseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$3;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$3;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f0e00d9

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mBadgeLayout:Landroid/widget/LinearLayout;

    .line 110
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 111
    return-void
.end method

.method public removeAllBadge()V
    .registers 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mBadgeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_11

    .line 328
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mBadgeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 329
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mNotiTime:J

    .line 331
    :cond_11
    return-void
.end method

.method public removeNewBadge()V
    .registers 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mBadgeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_11

    .line 298
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mBadgeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 299
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mNotiTime:J

    .line 301
    :cond_11
    return-void
.end method

.method public removeOnceBadge()V
    .registers 4

    .prologue
    .line 334
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mBadgeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2d

    .line 335
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mBadgeLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e000f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_29

    .line 337
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mBadgeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 338
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mInfo:Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->removeOnceInDB(Landroid/content/Context;Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)V

    .line 340
    :cond_29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mNotiTime:J

    .line 342
    :cond_2d
    return-void
.end method

.method public setCustomProviderBgColor(I)V
    .registers 3

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mCustomProviderBgColor:Z

    .line 145
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->setProviderBgColor(I)V

    .line 146
    return-void
.end method

.method public setCustomProviderTitleColor(I)V
    .registers 3

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mCustomProviderTitleColor:Z

    .line 150
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->setProviderTitleColor(I)V

    .line 151
    return-void
.end method

.method public setProviderBgColor(I)V
    .registers 8

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 123
    iput p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderBgColor:I

    .line 124
    iget v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderBgColor:I

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->setBackgroundColor(I)V

    .line 125
    new-array v0, v3, [[I

    new-array v1, v5, [I

    const v2, 0x101009c

    aput v2, v1, v4

    aput-object v1, v0, v4

    .line 126
    new-array v1, v5, [I

    const v2, -0x101009c

    aput v2, v1, v4

    aput-object v1, v0, v5

    .line 128
    new-array v1, v3, [I

    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v4

    .line 129
    iget v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderBgColor:I

    aput v2, v1, v5

    .line 130
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v2}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 131
    return-void
.end method

.method public setProviderInfo(Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)V
    .registers 5

    .prologue
    .line 162
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mInfo:Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 163
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mInfo:Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    if-eqz v0, :cond_51

    .line 164
    iget-object v0, p1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getDefaultActivity(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mIntent:Landroid/content/Intent;

    .line 165
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_30

    .line 166
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mInfo:Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    iget-object v1, v1, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mIntent:Landroid/content/Intent;

    .line 170
    :cond_30
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_51

    .line 171
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mInfo:Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    iget-object v0, v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 172
    invoke-virtual {p0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderTitle:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_51
    return-void
.end method

.method public setProviderTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    return-void
.end method

.method public setProviderTitleColor(I)V
    .registers 5

    .prologue
    .line 134
    iput p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderTitleColor:I

    .line 135
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_22

    .line 136
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderTitleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 138
    const/4 v1, 0x4

    iget v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->mProviderTitleColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 139
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->setProviderCollapseButtonColor(I)V

    .line 141
    :cond_22
    return-void
.end method
