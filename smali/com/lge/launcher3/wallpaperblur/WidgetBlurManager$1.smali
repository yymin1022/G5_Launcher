.class Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WidgetBlurManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getWorkspaceStateAnimationListener(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

.field private final synthetic val$fromStateIsNormal:Z

.field private final synthetic val$toStateIsNormal:Z


# direct methods
.method constructor <init>(Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;ZZ)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;->this$0:Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    iput-boolean p2, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;->val$fromStateIsNormal:Z

    iput-boolean p3, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;->val$toStateIsNormal:Z

    .line 464
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;->this$0:Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;->val$toStateIsNormal:Z

    if-nez v0, :cond_5

    .line 530
    :cond_4
    :goto_4
    return-void

    .line 484
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;->this$0:Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 485
    if-eqz v0, :cond_4

    .line 489
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_4

    .line 494
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 499
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;->this$0:Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->access$0(Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;)V

    goto :goto_4

    .line 503
    :cond_1f
    new-instance v1, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1$1;-><init>(Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;)V

    .line 529
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    goto :goto_4
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;->val$fromStateIsNormal:Z

    if-nez v0, :cond_5

    .line 474
    :goto_4
    return-void

    .line 473
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager$1;->this$0:Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurManager;->enableBlurViewAll(Z)V

    goto :goto_4
.end method
