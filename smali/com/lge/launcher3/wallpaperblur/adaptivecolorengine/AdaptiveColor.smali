.class public final Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;
.super Ljava/lang/Object;
.source "AdaptiveColor.java"


# static fields
.field public static final FIRST:I = 0x0

.field public static final SECOND:I = 0x1

.field public static final THIRD:I = 0x2

.field private static sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;


# instance fields
.field private mAdaptedColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

.field private mBlurRadius:I

.field private mIsColored:Z

.field private mOriginalColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

.field private mParam:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;

.field private mSelected2ndColorIdx:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->getParam()Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mParam:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;
    .registers 2

    .prologue
    .line 21
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;

    if-nez v0, :cond_13

    .line 22
    const-class v1, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;

    monitor-enter v1

    .line 23
    :try_start_7
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;

    if-nez v0, :cond_12

    .line 24
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;

    invoke-direct {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;-><init>()V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;

    .line 22
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 28
    :cond_13
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->sThis:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;

    return-object v0

    .line 22
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method protected clear()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->setBlurRadius(I)V

    .line 33
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mAdaptedColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    if-nez v1, :cond_2a

    .line 34
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    iput-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mAdaptedColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    .line 35
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mAdaptedColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    new-instance v2, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    invoke-direct {v2}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;-><init>()V

    aput-object v2, v1, v0

    .line 36
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mAdaptedColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    const/4 v2, 0x1

    new-instance v3, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    invoke-direct {v3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;-><init>()V

    aput-object v3, v1, v2

    .line 37
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mAdaptedColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    const/4 v2, 0x2

    new-instance v3, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    invoke-direct {v3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;-><init>()V

    aput-object v3, v1, v2

    .line 39
    :cond_2a
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mOriginalColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    if-eqz v1, :cond_31

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mOriginalColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    .line 42
    :cond_31
    iput-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mIsColored:Z

    .line 43
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->getDefaultColors()[I

    move-result-object v1

    .line 44
    :goto_37
    array-length v2, v1

    if-lt v0, v2, :cond_3b

    .line 47
    return-void

    .line 45
    :cond_3b
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mAdaptedColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    aget-object v2, v2, v0

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->setARGB(I)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_37
.end method

.method public get2ndAlpha()I
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mAdaptedColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getAlpha()I

    move-result v0

    return v0
.end method

.method public get2ndColor()I
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mAdaptedColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getARGB()I

    move-result v0

    return v0
.end method

.method public get2ndColors()[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mAdaptedColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mOriginalColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    iget v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mSelected2ndColorIdx:I

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    return-object v0
.end method

.method public get3rdAlpha()I
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mAdaptedColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getAlpha()I

    move-result v0

    return v0
.end method

.method public get3rdColor()I
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mAdaptedColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getARGB()I

    move-result v0

    return v0
.end method

.method public get3rdColors()[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;
    .registers 5

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 86
    new-array v0, v2, [Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mAdaptedColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mOriginalColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getBlurRadius()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mBlurRadius:I

    return v0
.end method

.method public getColor()I
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mAdaptedColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;->getARGB()I

    move-result v0

    return v0
.end method

.method public getColors()[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mAdaptedColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    aget-object v1, v1, v3

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mOriginalColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    return-object v0
.end method

.method public isColored()Z
    .registers 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mIsColored:Z

    return v0
.end method

.method protected setBlurRadius(I)V
    .registers 2

    .prologue
    .line 54
    iput p1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mBlurRadius:I

    .line 55
    return-void
.end method

.method public declared-synchronized update()V
    .registers 4

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mIsColored:Z

    if-eqz v0, :cond_39

    .line 97
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mParam:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;

    iget v0, v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;->blurRadius:I

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->setBlurRadius(I)V

    .line 98
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mOriginalColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mAdaptedColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 99
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mParam:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;

    .line 98
    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorTuner;->getAdaptedColor(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;)V

    .line 100
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mOriginalColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    .line 101
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mAdaptedColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mParam:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;

    .line 100
    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorTuner;->get2ndAdaptedColor([Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mSelected2ndColorIdx:I

    .line 102
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mOriginalColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mAdaptedColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 103
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mParam:Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;

    .line 102
    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorTuner;->get3rdAdaptedColor(Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColorParam;)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 105
    :cond_39
    monitor-exit p0

    return-void

    .line 96
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public update([Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;)V
    .registers 3

    .prologue
    .line 90
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mOriginalColors:[Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/colorutil/ColorInfo;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->mIsColored:Z

    .line 92
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/AdaptiveColor;->update()V

    .line 93
    return-void
.end method
