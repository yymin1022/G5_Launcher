.class Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1$1;
.super Ljava/lang/Object;
.source "WidgetBlurManager.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1$1;->this$1:Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 6

    .prologue
    .line 521
    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 527
    :goto_6
    return-void

    .line 524
    :cond_7
    invoke-virtual {p1, p0}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 526
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1$1;->this$1:Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;->access$0(Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->access$0(Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;)V

    goto :goto_6
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 509
    return-void
.end method
