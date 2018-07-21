.class public Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;
.super Ljava/lang/Object;
.source "AdaptiveColorParam.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final TO_MAX:I = -0xff

.field private static sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;


# instance fields
.field public blurRadius:I

.field public litCoef:[[I

.field public litStep:[I

.field public opacity:[I

.field public satCoef:[[I

.field public satStep:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-class v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dpToPx(I)I
    .registers 7

    .prologue
    .line 52
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 54
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->TAG:Ljava/lang/String;

    const-string v2, "dpToPx() : dp(%d), density(%.2f)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    int-to-float v1, p0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getDefaultColors()[I
    .registers 3

    .prologue
    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 45
    const/4 v1, 0x0

    const v2, 0x335a6376

    aput v2, v0, v1

    .line 46
    const/4 v1, 0x1

    const v2, -0x73ffc92f

    aput v2, v0, v1

    .line 47
    const/4 v1, 0x2

    const v2, -0x4cff163b

    aput v2, v0, v1

    .line 48
    return-object v0
.end method

.method public static getParam()Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;
    .registers 7

    .prologue
    .line 20
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;

    if-nez v0, :cond_99

    .line 21
    const-class v1, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;

    monitor-enter v1

    .line 22
    :try_start_7
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;

    if-nez v0, :cond_98

    .line 23
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;

    invoke-direct {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;-><init>()V

    .line 24
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_a0

    iput-object v2, v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->litStep:[I

    .line 25
    const/4 v2, 0x3

    new-array v2, v2, [[I

    iput-object v2, v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->litCoef:[[I

    .line 26
    iget-object v2, v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->litCoef:[[I

    const/4 v3, 0x0

    const/16 v4, 0xb

    new-array v4, v4, [I

    fill-array-data v4, :array_b8

    aput-object v4, v2, v3

    .line 27
    iget-object v2, v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->litCoef:[[I

    const/4 v3, 0x1

    const/16 v4, 0xb

    new-array v4, v4, [I

    fill-array-data v4, :array_d2

    aput-object v4, v2, v3

    .line 28
    iget-object v2, v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->litCoef:[[I

    const/4 v3, 0x2

    const/16 v4, 0xb

    new-array v4, v4, [I

    fill-array-data v4, :array_ec

    aput-object v4, v2, v3

    .line 29
    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_106

    iput-object v2, v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->satStep:[I

    .line 30
    const/4 v2, 0x3

    new-array v2, v2, [[I

    iput-object v2, v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->satCoef:[[I

    .line 31
    iget-object v2, v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->satCoef:[[I

    const/4 v3, 0x0

    const/4 v4, 0x6

    new-array v4, v4, [I

    const/4 v5, 0x1

    const/16 v6, -0x28

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, -0x28

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, -0x3c

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, -0x46

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, -0x46

    aput v6, v4, v5

    aput-object v4, v2, v3

    .line 32
    iget-object v2, v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->satCoef:[[I

    const/4 v3, 0x1

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_114

    aput-object v4, v2, v3

    .line 33
    iget-object v2, v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->satCoef:[[I

    const/4 v3, 0x2

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_124

    aput-object v4, v2, v3

    .line 34
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_134

    iput-object v2, v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->opacity:[I

    .line 35
    const/16 v2, 0x14

    invoke-static {v2}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->dpToPx(I)I

    move-result v2

    iput v2, v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->blurRadius:I

    .line 36
    sput-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;

    .line 21
    :cond_98
    monitor-exit v1
    :try_end_99
    .catchall {:try_start_7 .. :try_end_99} :catchall_9c

    .line 40
    :cond_99
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;

    return-object v0

    .line 21
    :catchall_9c
    move-exception v0

    :try_start_9d
    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw v0

    .line 24
    nop

    :array_a0
    .array-data 4
        0xa
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x5f
    .end array-data

    .line 26
    :array_b8
    .array-data 4
        0x3c
        0x23
        0x23
        0x14
        0x14
        0x14
        -0xa
        -0xff
        -0xff
        -0xff
        -0xf
    .end array-data

    .line 27
    :array_d2
    .array-data 4
        0x1e
        0x1e
        0x14
        0xa
        0xa
        -0xa
        -0xa
        -0xa
        -0xf
        -0x14
        -0x14
    .end array-data

    .line 28
    :array_ec
    .array-data 4
        0x14
        0x14
        0xa
        0x5
        -0x5
        -0x14
        -0x14
        -0x14
        -0x23
        -0x2d
        -0x2d
    .end array-data

    .line 29
    :array_106
    .array-data 4
        0x19
        0x32
        0x41
        0x50
        0x5a
    .end array-data

    .line 32
    :array_114
    .array-data 4
        0xa
        0xa
        0x5
        0x5
        -0xa
        -0x14
    .end array-data

    .line 33
    :array_124
    .array-data 4
        0x23
        0x1e
        0x14
        0x14
        -0xff
        -0xff
    .end array-data

    .line 34
    :array_134
    .array-data 4
        0xf
        0x37
        0x46
    .end array-data
.end method
