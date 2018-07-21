.class public Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;
.super Ljava/lang/Object;
.source "ScreenEffectPreviewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$ScreenEffectType:[I

.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreviewAnimationController:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

.field private mScreenEffectPreview:Lcom/lge/launcher3/screeneffect/dialog/previeweffect/IScreenEffectPreview;

.field private mSelectedScreenEffectPreviewType:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

.field private mTargetInfo:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$ScreenEffectType()[I
    .registers 3

    .prologue
    .line 35
    sget-object v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$ScreenEffectType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->values()[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->BREEZE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->CAROUSEL:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->PANORAMA:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35

    :goto_27
    :try_start_27
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->SLIDE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33

    :goto_30
    sput-object v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$ScreenEffectType:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_30

    :catch_35
    move-exception v1

    goto :goto_27

    :catch_37
    move-exception v1

    goto :goto_1e

    :catch_39
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mContext:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    .line 41
    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mScreenEffectPreview:Lcom/lge/launcher3/screeneffect/dialog/previeweffect/IScreenEffectPreview;

    .line 42
    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mSelectedScreenEffectPreviewType:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    .line 44
    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mPreviewAnimationController:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    .line 51
    iput-object p1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    .line 54
    new-instance v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    invoke-direct {v0, p0, p1}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;-><init>(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mPreviewAnimationController:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mSelectedScreenEffectPreviewType:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    return-object v0
.end method

.method private changeScreenEffectPreviewType(Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;)V
    .registers 4

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mSelectedScreenEffectPreviewType:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    .line 83
    invoke-static {}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$ScreenEffectType()[I

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mSelectedScreenEffectPreviewType:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    .line 103
    :goto_11
    return-void

    .line 85
    :pswitch_12
    new-instance v0, Lcom/lge/launcher3/screeneffect/dialog/previeweffect/ScreenEffectPreviewSlide;

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/launcher3/screeneffect/dialog/previeweffect/ScreenEffectPreviewSlide;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mScreenEffectPreview:Lcom/lge/launcher3/screeneffect/dialog/previeweffect/IScreenEffectPreview;

    goto :goto_11

    .line 89
    :pswitch_1c
    new-instance v0, Lcom/lge/launcher3/screeneffect/dialog/previeweffect/ScreenEffectPreviewBreeze;

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/launcher3/screeneffect/dialog/previeweffect/ScreenEffectPreviewBreeze;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mScreenEffectPreview:Lcom/lge/launcher3/screeneffect/dialog/previeweffect/IScreenEffectPreview;

    goto :goto_11

    .line 93
    :pswitch_26
    new-instance v0, Lcom/lge/launcher3/screeneffect/dialog/previeweffect/ScreenEffectPreviewCarousel;

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/launcher3/screeneffect/dialog/previeweffect/ScreenEffectPreviewCarousel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mScreenEffectPreview:Lcom/lge/launcher3/screeneffect/dialog/previeweffect/IScreenEffectPreview;

    goto :goto_11

    .line 97
    :pswitch_30
    new-instance v0, Lcom/lge/launcher3/screeneffect/dialog/previeweffect/ScreenEffectPreviewPanorama;

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/launcher3/screeneffect/dialog/previeweffect/ScreenEffectPreviewPanorama;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mScreenEffectPreview:Lcom/lge/launcher3/screeneffect/dialog/previeweffect/IScreenEffectPreview;

    goto :goto_11

    .line 83
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_12
        :pswitch_1c
        :pswitch_30
        :pswitch_26
    .end packed-switch
.end method

.method private drawChild(Landroid/graphics/Canvas;Landroid/view/View;Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    invoke-virtual {v0, p3}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->setWhichPageToDraw(Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;)V

    .line 145
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mScreenEffectPreview:Lcom/lge/launcher3/screeneffect/dialog/previeweffect/IScreenEffectPreview;

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    invoke-interface {v0, v1}, Lcom/lge/launcher3/screeneffect/dialog/previeweffect/IScreenEffectPreview;->getPageTransformationMatrix(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    invoke-static {v1}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewUtils;->getOutlineAlpha(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)I

    move-result v1

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 149
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 153
    invoke-static {p1, p2, v1, v3}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewUtils;->drawOutline(Landroid/graphics/Canvas;Landroid/view/View;ILandroid/graphics/Rect;)V

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 156
    return-void
.end method


# virtual methods
.method public cancelPreviewAnimation()V
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mPreviewAnimationController:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->clearAnimation()V

    .line 169
    return-void
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 359
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mPreviewAnimationController:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    if-eqz v0, :cond_c

    .line 360
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mPreviewAnimationController:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->clearAnimation()V

    .line 361
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mPreviewAnimationController:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    .line 364
    :cond_c
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mScreenEffectPreview:Lcom/lge/launcher3/screeneffect/dialog/previeweffect/IScreenEffectPreview;

    .line 365
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    .line 366
    iput-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mContext:Landroid/content/Context;

    .line 367
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 111
    iget-object v2, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mScreenEffectPreview:Lcom/lge/launcher3/screeneffect/dialog/previeweffect/IScreenEffectPreview;

    if-eqz v2, :cond_e

    .line 112
    iget-object v2, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mPreviewAnimationController:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    if-nez v2, :cond_f

    .line 134
    :cond_e
    :goto_e
    return v0

    .line 116
    :cond_f
    iget-object v2, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mPreviewAnimationController:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    invoke-virtual {v2}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 120
    invoke-virtual {p2, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_e

    .line 125
    iget-object v2, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    invoke-virtual {v2, p2}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->updateInfo(Landroid/view/View;)Z

    move-result v2

    .line 126
    if-eqz v2, :cond_e

    .line 131
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->NORMAL_LEFT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;)V

    .line 132
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->NORMAL_RIGHT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;)V

    move v0, v1

    .line 134
    goto :goto_e
.end method

.method public isPreviewAnimationStarted()Z
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mPreviewAnimationController:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->isStarted()Z

    move-result v0

    return v0
.end method

.method public setTargetView(Landroid/view/ViewGroup;)V
    .registers 5

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    iput-object p1, v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->mParent:Landroid/view/ViewGroup;

    .line 62
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mTargetInfo:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->mChild:Landroid/view/View;

    .line 63
    return-void
.end method

.method public startPreviewAnimation(I)V
    .registers 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->getScreenEffectType(Landroid/content/Context;I)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mSelectedScreenEffectPreviewType:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    if-eq v1, v0, :cond_d

    .line 71
    invoke-direct {p0, v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->changeScreenEffectPreviewType(Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;)V

    .line 74
    :cond_d
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->mPreviewAnimationController:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->access$2(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;)V

    .line 75
    return-void
.end method
