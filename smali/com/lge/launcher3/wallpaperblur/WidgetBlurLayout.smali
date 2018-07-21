.class public Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;
.super Landroid/widget/FrameLayout;
.source "WidgetBlurLayout.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBlurView:Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;

.field private mColorView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->TAG:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mBlurView:Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;

    .line 21
    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mColorView:Landroid/view/View;

    .line 30
    invoke-static {p1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 36
    :goto_12
    return-void

    .line 34
    :cond_13
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->addBlurView()V

    .line 35
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->addColorView()V

    goto :goto_12
.end method

.method private updateBlurredImage()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 163
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mBlurView:Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;

    if-nez v1, :cond_6

    .line 176
    :cond_5
    :goto_5
    return v0

    .line 168
    :cond_6
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    move-result-object v1

    .line 167
    invoke-virtual {p0, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->getBlurredImage(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 169
    iget-object v2, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mBlurView:Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->setBlurredImage(Landroid/graphics/Bitmap;)V

    .line 171
    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public addBlurView()V
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mBlurView:Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;

    if-eqz v0, :cond_5

    .line 47
    :goto_4
    return-void

    .line 45
    :cond_5
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mBlurView:Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;

    .line 46
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mBlurView:Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->addView(Landroid/view/View;)V

    goto :goto_4
.end method

.method public addColorView()V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mColorView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 72
    :goto_4
    return-void

    .line 68
    :cond_5
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mColorView:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getCommonColor()I

    move-result v0

    .line 70
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->updateColorView(I)V

    .line 71
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mColorView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->addView(Landroid/view/View;)V

    goto :goto_4
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mBlurView:Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mBlurView:Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->shouldUpdateBlurredImage()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 153
    invoke-direct {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->updateBlurredImage()Z

    .line 156
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 157
    return-void
.end method

.method public enableBlurView(Z)V
    .registers 3

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->enableBlurView(ZZ)V

    .line 90
    return-void
.end method

.method public enableBlurView(ZZ)V
    .registers 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mBlurView:Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;

    if-nez v0, :cond_5

    .line 109
    :goto_4
    return-void

    .line 106
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mBlurView:Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->enable(ZZ)V

    .line 108
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->invalidate()V

    goto :goto_4
.end method

.method public enableColorView(Z)V
    .registers 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mColorView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 135
    :goto_4
    return-void

    .line 134
    :cond_5
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mColorView:Landroid/view/View;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_e
    const/4 v0, 0x4

    goto :goto_a
.end method

.method protected getBlurredImage(Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;)Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 185
    invoke-virtual {p1, p0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getBlurredImageForChildOfWorkspace(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public removeBlurView()V
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mBlurView:Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;

    if-nez v0, :cond_5

    .line 59
    :goto_4
    return-void

    .line 56
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mBlurView:Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->removeView(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mBlurView:Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->destroy()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mBlurView:Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;

    goto :goto_4
.end method

.method public removeColorView()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mColorView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 83
    :goto_4
    return-void

    .line 81
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mColorView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->removeView(Landroid/view/View;)V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mColorView:Landroid/view/View;

    goto :goto_4
.end method

.method public updateBlurView()V
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mBlurView:Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;

    if-nez v0, :cond_5

    .line 124
    :goto_4
    return-void

    .line 122
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mBlurView:Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurView;->updateBlurredImage()V

    .line 123
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->invalidate()V

    goto :goto_4
.end method

.method public updateColorView(I)V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mColorView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 146
    :goto_4
    return-void

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;->mColorView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4
.end method
