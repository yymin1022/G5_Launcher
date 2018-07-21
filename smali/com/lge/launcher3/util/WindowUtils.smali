.class public Lcom/lge/launcher3/util/WindowUtils;
.super Ljava/lang/Object;
.source "WindowUtils.java"


# static fields
.field private static final INITIALIZED_VALUE_INT:I = -0x1

.field private static final MILLIMETER_PER_INCH:F = 25.4f

.field private static sDensity:I

.field private static sHasNavigationBar:I

.field private static sNavigationBarHeight:I

.field private static sStatusBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/lge/launcher3/util/WindowUtils;->sDensity:I

    .line 31
    sput v1, Lcom/lge/launcher3/util/WindowUtils;->sStatusBarHeight:I

    .line 32
    sput v1, Lcom/lge/launcher3/util/WindowUtils;->sNavigationBarHeight:I

    .line 33
    sput v1, Lcom/lge/launcher3/util/WindowUtils;->sHasNavigationBar:I

    .line 288
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDensity(Landroid/content/Context;)F
    .registers 2

    .prologue
    .line 282
    if-nez p0, :cond_a

    .line 283
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 285
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_9
.end method

.method public static getDensityDpi(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 262
    if-nez p0, :cond_a

    .line 263
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 274
    :goto_9
    return v0

    .line 266
    :cond_a
    sget v0, Lcom/lge/launcher3/util/WindowUtils;->sDensity:I

    if-lez v0, :cond_11

    .line 267
    sget v0, Lcom/lge/launcher3/util/WindowUtils;->sDensity:I

    goto :goto_9

    .line 270
    :cond_11
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 271
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 272
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 273
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/lge/launcher3/util/WindowUtils;->sDensity:I

    .line 274
    sget v0, Lcom/lge/launcher3/util/WindowUtils;->sDensity:I

    goto :goto_9
.end method

.method public static getDisplayHeight(Landroid/app/Activity;)I
    .registers 2

    .prologue
    .line 65
    invoke-static {p0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplaySize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public static getDisplayHeight(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 57
    invoke-static {p0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public static getDisplayRealHeight(Landroid/app/Activity;)I
    .registers 2

    .prologue
    .line 124
    invoke-static {p0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplayRealSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public static getDisplayRealHeight(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 116
    invoke-static {p0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplayRealSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public static getDisplayRealSize(Landroid/app/Activity;)Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplayRealSize(Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayRealSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 132
    invoke-static {p0}, Lcom/lge/launcher3/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplayRealSize(Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayRealSize(Landroid/view/WindowManager;)Landroid/graphics/Point;
    .registers 3

    .prologue
    .line 148
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 149
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 151
    return-object v1
.end method

.method public static getDisplayRealWidth(Landroid/app/Activity;)I
    .registers 2

    .prologue
    .line 108
    invoke-static {p0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplayRealSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public static getDisplayRealWidth(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 100
    invoke-static {p0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplayRealSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public static getDisplaySize(Landroid/app/Activity;)Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplaySize(Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 73
    invoke-static {p0}, Lcom/lge/launcher3/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplaySize(Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplaySize(Landroid/view/WindowManager;)Landroid/graphics/Point;
    .registers 3

    .prologue
    .line 89
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 90
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 92
    return-object v1
.end method

.method public static getDisplayWidth(Landroid/app/Activity;)I
    .registers 2

    .prologue
    .line 49
    invoke-static {p0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplaySize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public static getDisplayWidth(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 41
    invoke-static {p0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .registers 6

    .prologue
    .line 194
    sget v0, Lcom/lge/launcher3/util/WindowUtils;->sNavigationBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    .line 195
    const/4 v0, 0x0

    .line 196
    invoke-static {}, Lcom/lge/launcher3/util/WindowUtils;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 198
    invoke-static {p0}, Lcom/lge/launcher3/util/OrientationUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 199
    const-string v2, "navigation_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 200
    if-eqz v2, :cond_26

    .line 201
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 211
    :cond_26
    :goto_26
    sput v0, Lcom/lge/launcher3/util/WindowUtils;->sNavigationBarHeight:I

    .line 213
    :cond_28
    sget v0, Lcom/lge/launcher3/util/WindowUtils;->sNavigationBarHeight:I

    return v0

    .line 204
    :cond_2b
    const-string v2, "navigation_bar_height_landscape"

    const-string v3, "dimen"

    .line 205
    const-string v4, "android"

    .line 204
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 206
    if-eqz v2, :cond_26

    .line 207
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_26
.end method

.method public static getOneDPToPixel(Landroid/content/Context;)F
    .registers 2

    .prologue
    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static getRealMillimeterPixel(Landroid/content/Context;I)I
    .registers 4

    .prologue
    .line 296
    if-eqz p0, :cond_18

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_18

    .line 299
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_18

    .line 301
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const v1, 0x41cb3333    # 25.4f

    div-float/2addr v0, v1

    .line 302
    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 306
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .registers 5

    .prologue
    .line 179
    sget v0, Lcom/lge/launcher3/util/WindowUtils;->sStatusBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 181
    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 182
    invoke-static {p0, v0}, Lcom/lge/launcher3/util/WindowUtils;->getValueByNonCompatScaledDensity(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/lge/launcher3/util/WindowUtils;->sStatusBarHeight:I

    .line 184
    :cond_19
    sget v0, Lcom/lge/launcher3/util/WindowUtils;->sStatusBarHeight:I

    return v0
.end method

.method private static getValueByNonCompatScaledDensity(Landroid/content/Context;I)I
    .registers 6

    .prologue
    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_21

    .line 241
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 242
    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 243
    iget v0, v2, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    .line 244
    iget v1, v1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 246
    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public static getWindowManager()Landroid/view/IWindowManager;
    .registers 1

    .prologue
    .line 169
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    return-object v0
.end method

.method public static getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .registers 2

    .prologue
    .line 159
    if-nez p0, :cond_4

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_3
    return-object v0

    :cond_4
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    goto :goto_3
.end method

.method public static hasNavigationBar()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 220
    sget v0, Lcom/lge/launcher3/util/WindowUtils;->sHasNavigationBar:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_14

    .line 223
    :try_start_7
    invoke-static {}, Lcom/lge/launcher3/util/WindowUtils;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_19

    move-result v0

    .line 227
    :goto_f
    if-eqz v0, :cond_1f

    move v0, v1

    :goto_12
    sput v0, Lcom/lge/launcher3/util/WindowUtils;->sHasNavigationBar:I

    .line 229
    :cond_14
    sget v0, Lcom/lge/launcher3/util/WindowUtils;->sHasNavigationBar:I

    if-ne v0, v1, :cond_21

    :goto_18
    return v1

    .line 224
    :catch_19
    move-exception v0

    .line 225
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v2

    goto :goto_f

    :cond_1f
    move v0, v2

    .line 227
    goto :goto_12

    :cond_21
    move v1, v2

    .line 229
    goto :goto_18
.end method
