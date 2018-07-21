.class Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController$2;
.super Ljava/lang/Object;
.source "ScreenEffectPreviewManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->getVirtualScrollAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController$2;->this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController$2;->this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->access$3(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->access$1(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    move-result-object v0

    if-nez v0, :cond_d

    .line 276
    :cond_c
    :goto_c
    return-void

    .line 270
    :cond_d
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_c

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 275
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController$2;->this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    invoke-static {v1}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->access$3(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->access$1(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    move-result-object v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->setScrollX(I)V

    goto :goto_c
.end method
