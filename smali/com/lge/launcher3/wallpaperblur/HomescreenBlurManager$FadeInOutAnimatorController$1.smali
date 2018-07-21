.class Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController$1;
.super Ljava/lang/Object;
.source "HomescreenBlurManager.java"

# interfaces
.implements Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeInOutAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;-><init>(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController$1;->this$1:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;)V
    .registers 7

    .prologue
    .line 293
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->TAG:Ljava/lang/String;

    const-string v1, "%s onAnimationEnd()"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;->FADE_OUT:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    if-ne p2, v0, :cond_1a

    .line 296
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController$1;->this$1:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->access$2(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;)V

    .line 299
    :cond_1a
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController$1;->this$1:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->access$1(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;)V

    .line 300
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 276
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->TAG:Ljava/lang/String;

    const-string v1, "%s onAnimationStart()"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;->FADE_IN:Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;

    if-ne p2, v0, :cond_2b

    .line 279
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController$1;->this$1:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->updateBackgroundViewContents()V

    .line 281
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController$1;->this$1:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->access$0(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 282
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController$1;->this$1:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->access$0(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    :cond_2b
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController$1;->this$1:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;

    invoke-static {v0, p2}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;->access$1(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$FadeInOutAnimatorController;Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;)V

    .line 287
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;Lcom/lge/launcher3/wallpaperblur/FadeInOutAnimator$FadeType;)V
    .registers 3

    .prologue
    .line 306
    return-void
.end method
