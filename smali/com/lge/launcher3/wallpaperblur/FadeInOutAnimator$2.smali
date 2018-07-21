.class Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$2;
.super Ljava/lang/Object;
.source "FadeInOutAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->start(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

.field private final synthetic val$type:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$2;->this$0:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    iput-object p2, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$2;->val$type:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_a

    instance-of v1, v0, Ljava/lang/Float;

    if-nez v1, :cond_b

    .line 156
    :cond_a
    :goto_a
    return-void

    .line 151
    :cond_b
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$2;->this$0:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    invoke-static {v1}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->access$2(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;)Landroid/view/View;

    move-result-object v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 153
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$2;->this$0:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->access$1(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;)Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeInOutAnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 154
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$2;->this$0:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->access$1(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;)Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeInOutAnimatorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$2;->val$type:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    invoke-interface {v0, p1, v1}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeInOutAnimatorListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;)V

    goto :goto_a
.end method
