.class public Lcom/lge/launcher3/screeneffect/dialog/previeweffect/ScreenEffectPreviewCarousel;
.super Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;
.source "ScreenEffectPreviewCarousel.java"

# interfaces
.implements Lcom/lge/launcher3/screeneffect/dialog/previeweffect/IScreenEffectPreview;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;-><init>(Landroid/content/Context;)V

    .line 22
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/dialog/previeweffect/ScreenEffectPreviewCarousel;->scaleCameraLocationZ(F)V

    .line 23
    return-void
.end method


# virtual methods
.method public getPageTransformationMatrix(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Landroid/graphics/Matrix;
    .registers 3

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectCarousel;->getPageTransformationMatrix(Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method
