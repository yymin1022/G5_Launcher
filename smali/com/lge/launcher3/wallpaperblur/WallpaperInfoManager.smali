.class public Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;
.super Ljava/lang/Object;
.source "WallpaperInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$wallpaperblur$WallpaperInfoManager$SizeState:[I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultWallpaperSize:Landroid/graphics/Point;

.field private mDesiredWallpaperSize:Landroid/graphics/Point;

.field private mRealWallpaperSize:Landroid/graphics/Point;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$wallpaperblur$WallpaperInfoManager$SizeState()[I
    .registers 3

    .prologue
    .line 21
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->$SWITCH_TABLE$com$lge$launcher3$wallpaperblur$WallpaperInfoManager$SizeState:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->values()[Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->EQ_WIDTH_EQ_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_72

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->EQ_WIDTH_LA_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_70

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->EQ_WIDTH_SM_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_6e

    :goto_27
    :try_start_27
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->LA_WIDTH_EQ_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_31} :catch_6c

    :goto_31
    :try_start_31
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->LA_WIDTH_LA_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_3b} :catch_6a

    :goto_3b
    :try_start_3b
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->LA_WIDTH_SM_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_68

    :goto_44
    :try_start_44
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->SM_WIDTH_EQ_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4d} :catch_66

    :goto_4d
    :try_start_4d
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->SM_WIDTH_LA_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_56} :catch_64

    :goto_56
    :try_start_56
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->SM_WIDTH_SM_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_5f} :catch_62

    :goto_5f
    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->$SWITCH_TABLE$com$lge$launcher3$wallpaperblur$WallpaperInfoManager$SizeState:[I

    goto :goto_4

    :catch_62
    move-exception v1

    goto :goto_5f

    :catch_64
    move-exception v1

    goto :goto_56

    :catch_66
    move-exception v1

    goto :goto_4d

    :catch_68
    move-exception v1

    goto :goto_44

    :catch_6a
    move-exception v1

    goto :goto_3b

    :catch_6c
    move-exception v1

    goto :goto_31

    :catch_6e
    move-exception v1

    goto :goto_27

    :catch_70
    move-exception v1

    goto :goto_1e

    :catch_72
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mContext:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 27
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mRealWallpaperSize:Landroid/graphics/Point;

    .line 28
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mDefaultWallpaperSize:Landroid/graphics/Point;

    .line 29
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mDesiredWallpaperSize:Landroid/graphics/Point;

    .line 42
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mContext:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 44
    return-void
.end method

.method private getWallpaperHeightScaledRatio()F
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mRealWallpaperSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/launcher3/util/WindowUtils;->getDisplayRealSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getWallpaperSizeState()Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;
    .registers 6

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mRealWallpaperSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 163
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mRealWallpaperSize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->y:I

    .line 165
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplayRealSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 166
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 167
    iget v4, v0, Landroid/graphics/Point;->y:I

    .line 169
    const/4 v0, 0x0

    .line 170
    if-ge v1, v3, :cond_24

    .line 171
    if-ge v2, v4, :cond_1a

    .line 172
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->SM_WIDTH_SM_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    .line 195
    :cond_19
    :goto_19
    return-object v0

    .line 173
    :cond_1a
    if-ne v2, v4, :cond_1f

    .line 174
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->SM_WIDTH_EQ_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    goto :goto_19

    .line 175
    :cond_1f
    if-le v2, v4, :cond_19

    .line 176
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->SM_WIDTH_LA_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    goto :goto_19

    .line 178
    :cond_24
    if-ne v1, v3, :cond_35

    .line 179
    if-ge v2, v4, :cond_2b

    .line 180
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->EQ_WIDTH_SM_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    goto :goto_19

    .line 181
    :cond_2b
    if-ne v2, v4, :cond_30

    .line 182
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->EQ_WIDTH_EQ_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    goto :goto_19

    .line 183
    :cond_30
    if-le v2, v4, :cond_19

    .line 184
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->EQ_WIDTH_LA_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    goto :goto_19

    .line 186
    :cond_35
    if-le v1, v3, :cond_19

    .line 187
    if-ge v2, v4, :cond_3c

    .line 188
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->LA_WIDTH_SM_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    goto :goto_19

    .line 189
    :cond_3c
    if-ne v2, v4, :cond_41

    .line 190
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->LA_WIDTH_EQ_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    goto :goto_19

    .line 191
    :cond_41
    if-le v2, v4, :cond_19

    .line 192
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->LA_WIDTH_LA_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    goto :goto_19
.end method

.method private getWallpaperWidthScaledRatio()F
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mRealWallpaperSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/launcher3/util/WindowUtils;->getDisplayRealSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private updateWallpaperSizeInfo(Landroid/graphics/drawable/Drawable;)V
    .registers 10

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 68
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    .line 69
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mRealWallpaperSize:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 71
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/WindowUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 73
    invoke-static {v1, v0}, Lcom/android/launcher3/util/WallpaperUtils;->getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mDefaultWallpaperSize:Landroid/graphics/Point;

    .line 75
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v1

    .line 77
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mDesiredWallpaperSize:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 79
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplayRealSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 80
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->TAG:Ljava/lang/String;

    const-string v2, "mRealWallpaperSize    : %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mRealWallpaperSize:Landroid/graphics/Point;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->TAG:Ljava/lang/String;

    const-string v2, "DisplaySize           : %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "mDefaultWallpaperSize : %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mDefaultWallpaperSize:Landroid/graphics/Point;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "mDesiredWallpaperSize : %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mDesiredWallpaperSize:Landroid/graphics/Point;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "RealWallpaperSizeRatio : %.3f (%.3f, %.3f)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 85
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->getWallpaperScaledRatio()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->getWallpaperWidthScaledRatio()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->getWallpaperHeightScaledRatio()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    .line 84
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "getWallpaperStartOffset : (%d, %d)"

    new-array v2, v7, [Ljava/lang/Object;

    .line 87
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->getWallpaperStartOffsetX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->getWallpaperStartOffsetY()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 86
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method


# virtual methods
.method public getRealWallpaperMaxOffsetX()I
    .registers 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplayRealSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 151
    const/4 v0, 0x0

    .line 152
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mRealWallpaperSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-lt v2, v1, :cond_14

    .line 153
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mRealWallpaperSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    .line 155
    :cond_14
    return v0
.end method

.method public getWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 51
    if-nez v0, :cond_18

    .line 52
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "getWallpaperDrawable() : Wallpaper drawable is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    .line 60
    :goto_17
    return-object v0

    .line 56
    :cond_18
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 58
    invoke-direct {p0, v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->updateWallpaperSizeInfo(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17
.end method

.method public getWallpaperScaledRatio()F
    .registers 4

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->getWallpaperWidthScaledRatio()F

    move-result v0

    .line 203
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->getWallpaperHeightScaledRatio()F

    move-result v1

    .line 204
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getWallpaperStartOffsetX()I
    .registers 8

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->getWallpaperScaledRatio()F

    move-result v2

    .line 104
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->getWallpaperSizeState()Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    move-result-object v3

    .line 105
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/launcher3/util/OrientationUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 106
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mRealWallpaperSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v2

    mul-float/2addr v1, v4

    mul-float/2addr v1, v6

    .line 108
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->$SWITCH_TABLE$com$lge$launcher3$wallpaperblur$WallpaperInfoManager$SizeState()[I

    move-result-object v4

    invoke-virtual {v3}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_54

    :cond_2a
    move v0, v1

    .line 132
    :cond_2b
    :goto_2b
    :pswitch_2b
    float-to-int v0, v0

    return v0

    .line 110
    :pswitch_2d
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->getWallpaperWidthScaledRatio()F

    move-result v3

    .line 111
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->getWallpaperHeightScaledRatio()F

    move-result v4

    .line 113
    cmpg-float v5, v3, v4

    if-ltz v5, :cond_2b

    .line 115
    cmpl-float v5, v3, v4

    if-eqz v5, :cond_2b

    .line 117
    cmpl-float v0, v3, v4

    if-lez v0, :cond_2a

    .line 118
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/util/WindowUtils;->getDisplayRealSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 119
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mRealWallpaperSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    mul-float/2addr v0, v6

    .line 121
    goto :goto_2b

    .line 108
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method public getWallpaperStartOffsetY()I
    .registers 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->getWallpaperScaledRatio()F

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/launcher3/util/WindowUtils;->getDisplayRealSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 141
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mRealWallpaperSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 142
    float-to-int v0, v0

    return v0
.end method

.method public isLiveWallpaperMode()Z
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
