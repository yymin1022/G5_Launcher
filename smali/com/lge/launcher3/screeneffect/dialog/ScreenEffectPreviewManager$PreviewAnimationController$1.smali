.class Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScreenEffectPreviewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->startPreviewAnimation()V
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
    iput-object p1, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController$1;->this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    .line 213
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController$1;->this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->access$1(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;)V

    .line 226
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController$1;->this$1:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;->access$0(Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager$PreviewAnimationController;)V

    .line 219
    return-void
.end method
