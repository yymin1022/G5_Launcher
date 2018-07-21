.class public Lcom/lge/launcher3/screeneffect/dialog/previeweffect/ScreenEffectPreviewPanorama;
.super Lcom/lge/launcher3/screeneffect/effect/ScreenEffectPanorama;
.source "ScreenEffectPreviewPanorama.java"

# interfaces
.implements Lcom/lge/launcher3/screeneffect/dialog/previeweffect/IScreenEffectPreview;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectPanorama;-><init>(Landroid/content/Context;)V

    .line 23
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/dialog/previeweffect/ScreenEffectPreviewPanorama;->scaleCameraLocationZ(F)V

    .line 24
    return-void
.end method


# virtual methods
.method public getPageTransformationMatrix(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Landroid/graphics/Matrix;
    .registers 5

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectPanorama;->getPageTransformationMatrix(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 31
    invoke-static {p1}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewUtils;->getScrollX(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 32
    return-object v0
.end method
