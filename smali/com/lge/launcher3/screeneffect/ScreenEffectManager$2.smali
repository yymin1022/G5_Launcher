.class Lcom/lge/launcher3/screeneffect/ScreenEffectManager$2;
.super Ljava/lang/Object;
.source "ScreenEffectManager.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->getLayoutTransitionListener()Landroid/animation/LayoutTransition$TransitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$2;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 7

    .prologue
    .line 331
    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 335
    :goto_6
    return-void

    .line 334
    :cond_7
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$2;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$4(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;Z)V

    goto :goto_6
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 7

    .prologue
    .line 323
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$2;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$4(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;Z)V

    .line 324
    return-void
.end method
