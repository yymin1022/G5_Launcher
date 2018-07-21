.class Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController$3;
.super Ljava/lang/Object;
.source "ScreenEffectPreviewManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->getInvalidateAnimation()Landroid/animation/ValueAnimator;
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
    iput-object p1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController$3;->this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController$3;->this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->access$3(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->access$1(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController$3;->this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->access$3(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->access$1(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->mParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1b

    .line 297
    :cond_1a
    :goto_1a
    return-void

    .line 296
    :cond_1b
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController$3;->this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->access$3(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->access$1(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;)Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewTargetInfo;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_1a
.end method
