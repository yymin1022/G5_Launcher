.class Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FadeInOutAnimator.java"


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
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$1;->this$0:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    iput-object p2, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$1;->val$type:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    .line 110
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$1;->this$0:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->access$1(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;)Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeInOutAnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 132
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$1;->this$0:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->access$1(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;)Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeInOutAnimatorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$1;->val$type:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    invoke-interface {v0, p1, v1}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeInOutAnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;)V

    .line 134
    :cond_13
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$1;->this$0:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->access$1(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;)Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeInOutAnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 120
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$1;->this$0:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;->access$1(Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator;)Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeInOutAnimatorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$1;->val$type:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    invoke-interface {v0, p1, v1}, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeInOutAnimatorListener;->onAnimationStart(Landroid/animation/Animator;Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;)V

    .line 122
    :cond_13
    return-void
.end method
