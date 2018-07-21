.class Lcom/lge/launcher3/screeneffect/ScreenEffectManager$1;
.super Ljava/lang/Object;
.source "ScreenEffectManager.java"

# interfaces
.implements Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->getStateTransitionListener()Lcom/lge/launcher3/WorkspaceStateTransitionWatcher$StateTransitionListener;
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
    iput-object p1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$1;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionEnd(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 274
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$1;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$3(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    move-result-object v0

    if-nez v0, :cond_a

    .line 289
    :cond_9
    :goto_9
    return-void

    .line 278
    :cond_a
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne p2, v0, :cond_9

    .line 279
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$1;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$3(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_25

    .line 281
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$1;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0, v2}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$4(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;Z)V

    .line 284
    :cond_25
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$1;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$3(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$1;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$8(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->setDefaultInterpolator(Landroid/view/animation/Interpolator;)V

    .line 286
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$1;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0, v2}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$6(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;Z)V

    .line 287
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$1;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0, v2}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$7(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;Z)V

    goto :goto_9
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$1;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$3(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    move-result-object v0

    if-nez v0, :cond_a

    .line 268
    :cond_9
    :goto_9
    return-void

    .line 260
    :cond_a
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq p2, v0, :cond_9

    .line 261
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$1;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0, v2}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$4(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;Z)V

    .line 263
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$1;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$3(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$1;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$5(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->setDefaultInterpolator(Landroid/view/animation/Interpolator;)V

    .line 265
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$1;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0, v2}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$6(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;Z)V

    .line 266
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$1;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0, v2}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$7(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;Z)V

    goto :goto_9
.end method
