.class public Lcom/lge/launcher3/screeneffect/dialog/previeweffect/ScreenEffectPreviewSlide;
.super Lcom/lge/launcher3/screeneffect/effect/ScreenEffectSlide;
.source "ScreenEffectPreviewSlide.java"

# interfaces
.implements Lcom/lge/launcher3/screeneffect/dialog/previeweffect/IScreenEffectPreview;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectSlide;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getPageTransformationMatrix(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Landroid/graphics/Matrix;
    .registers 5

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/previeweffect/ScreenEffectPreviewSlide;->mPageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 30
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/previeweffect/ScreenEffectPreviewSlide;->mPageMatrix:Landroid/graphics/Matrix;

    invoke-static {p1}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewUtils;->getScrollX(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 31
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/previeweffect/ScreenEffectPreviewSlide;->mPageMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method
