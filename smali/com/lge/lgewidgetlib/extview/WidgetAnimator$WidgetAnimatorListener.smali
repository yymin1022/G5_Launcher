.class final Lcom/lge/lgewidgetlib/extview/WidgetAnimator$WidgetAnimatorListener;
.super Ljava/lang/Object;
.source "WidgetAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgewidgetlib/extview/WidgetAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WidgetAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;


# direct methods
.method private constructor <init>(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)V
    .registers 2

    .prologue
    .line 131
    iput-object p1, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$WidgetAnimatorListener;->this$0:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;Lcom/lge/lgewidgetlib/extview/WidgetAnimator$WidgetAnimatorListener;)V
    .registers 3

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$WidgetAnimatorListener;-><init>(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$WidgetAnimatorListener;->this$0:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-static {v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->access$4(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)Lcom/lge/lgewidgetlib/extview/ExtViewEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewEventListener;->onCancelReqComplete()V

    .line 137
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$WidgetAnimatorListener;->this$0:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->access$5(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;Z)V

    .line 138
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$WidgetAnimatorListener;->this$0:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-static {v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->access$6(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 144
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$WidgetAnimatorListener;->this$0:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->access$5(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;Z)V

    .line 152
    :goto_e
    return-void

    .line 147
    :cond_f
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$WidgetAnimatorListener;->this$0:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-static {v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->access$1(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 148
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$WidgetAnimatorListener;->this$0:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-static {v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->access$4(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)Lcom/lge/lgewidgetlib/extview/ExtViewEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewEventListener;->onRestoreReqComplete()V

    goto :goto_e

    .line 150
    :cond_21
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$WidgetAnimatorListener;->this$0:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-static {v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->access$4(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)Lcom/lge/lgewidgetlib/extview/ExtViewEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewEventListener;->onExpandReqComplete()V

    goto :goto_e
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 158
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 164
    return-void
.end method
