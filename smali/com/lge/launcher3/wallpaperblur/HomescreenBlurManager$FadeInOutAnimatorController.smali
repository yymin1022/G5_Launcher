.class Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;
.super Ljava/lang/Object;
.source "HomescreenBlurManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeInOutAnimatorController"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$wallpaperblur$FadeInOutAnimator$FadeType:[I


# instance fields
.field private mBackgroundType:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

.field private mBackgroundView:Landroid/widget/ImageView;

.field private mBackgroundViewImage:Landroid/graphics/Bitmap;

.field private mFadeInOutAnimator:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

.field private mFadeType:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

.field final synthetic this$0:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$wallpaperblur$FadeInOutAnimator$FadeType()[I
    .registers 3

    .prologue
    .line 258
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->$SWITCH_TABLE$com$lge$launcher3$wallpaperblur$FadeInOutAnimator$FadeType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;->values()[Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;->FADE_IN:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;->FADE_OUT:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21

    :goto_1e
    sput-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->$SWITCH_TABLE$com$lge$launcher3$wallpaperblur$FadeInOutAnimator$FadeType:[I

    goto :goto_4

    :catch_21
    move-exception v1

    goto :goto_1e

    :catch_23
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 269
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->this$0:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mFadeInOutAnimator:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    .line 260
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mFadeType:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    .line 262
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundView:Landroid/widget/ImageView;

    .line 263
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundType:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    .line 264
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundViewImage:Landroid/graphics/Bitmap;

    .line 270
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    invoke-direct {v0}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mFadeInOutAnimator:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    .line 271
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mFadeInOutAnimator:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    new-instance v1, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController$1;-><init>(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;)V

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->addListener(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeInOutAnimatorListener;)V

    .line 308
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;)V
    .registers 2

    .prologue
    .line 260
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mFadeType:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    return-void
.end method

.method static synthetic access$2(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;)V
    .registers 1

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->clearBackgroundView()V

    return-void
.end method

.method private clearBackgroundView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 395
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1f

    .line 396
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 397
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 399
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 400
    iput-object v2, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundView:Landroid/widget/ImageView;

    .line 403
    :cond_1f
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundViewImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2a

    .line 404
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundViewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 405
    iput-object v2, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundViewImage:Landroid/graphics/Bitmap;

    .line 407
    :cond_2a
    return-void
.end method

.method private shouldNeedAnimation(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 337
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    move v0, v1

    .line 338
    :goto_b
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->$SWITCH_TABLE$com$lge$launcher3$wallpaperblur$FadeInOutAnimator$FadeType()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_36

    .line 356
    :cond_18
    :goto_18
    return v2

    :cond_19
    move v0, v2

    .line 337
    goto :goto_b

    .line 340
    :pswitch_1b
    iget-object v3, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mFadeType:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    sget-object v4, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;->FADE_IN:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    if-eq v3, v4, :cond_18

    .line 341
    iget-object v3, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mFadeType:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    if-nez v3, :cond_27

    if-nez v0, :cond_18

    :cond_27
    move v2, v1

    .line 356
    goto :goto_18

    .line 347
    :pswitch_29
    iget-object v3, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mFadeType:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    sget-object v4, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;->FADE_OUT:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    if-eq v3, v4, :cond_18

    .line 348
    iget-object v3, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mFadeType:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    if-nez v3, :cond_27

    if-nez v0, :cond_27

    goto :goto_18

    .line 338
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_29
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mFadeInOutAnimator:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->clear()V

    .line 417
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->clearBackgroundView()V

    .line 418
    return-void
.end method

.method public start(Landroid/widget/ImageView;Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;I)V
    .registers 6

    .prologue
    .line 318
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundView:Landroid/widget/ImageView;

    if-eq v0, p1, :cond_7

    .line 319
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->clear()V

    .line 321
    :cond_7
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundView:Landroid/widget/ImageView;

    .line 322
    iput-object p2, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundType:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    .line 324
    invoke-direct {p0, p3}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->shouldNeedAnimation(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 330
    :goto_11
    return-void

    .line 328
    :cond_12
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mFadeInOutAnimator:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->setTargetView(Landroid/view/View;)V

    .line 329
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mFadeInOutAnimator:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    invoke-virtual {v0, p3, p4}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->start(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;I)V

    goto :goto_11
.end method

.method public updateBackgroundViewContents()V
    .registers 6

    .prologue
    .line 366
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundView:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundType:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    if-nez v0, :cond_9

    .line 390
    :cond_8
    :goto_8
    return-void

    .line 370
    :cond_9
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->this$0:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->isLiveWallpaperMode()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 371
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->this$0:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->access$0(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getBlurredImageForCurrentWorkspace()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 371
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundViewImage:Landroid/graphics/Bitmap;

    .line 374
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->TAG:Ljava/lang/String;

    const-string v1, "updateBackgroundViewContents() : mBackgroundViewImage(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 375
    iget-object v4, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundViewImage:Landroid/graphics/Bitmap;

    aput-object v4, v2, v3

    .line 374
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundViewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_8

    .line 379
    :cond_3c
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundType:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->isSupportLiveWallpaperMode()Z

    move-result v0

    if-nez v0, :cond_48

    .line 380
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->clear()V

    goto :goto_8

    .line 384
    :cond_48
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 386
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->this$0:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->access$0(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 387
    const v1, 0x7f0b0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 388
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_8
.end method
