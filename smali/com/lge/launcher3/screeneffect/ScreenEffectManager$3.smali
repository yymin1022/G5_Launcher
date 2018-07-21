.class Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;
.super Ljava/lang/Object;
.source "ScreenEffectManager.java"

# interfaces
.implements Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->getScrollerListener()Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;
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
    iput-object p1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollerFinish(IILcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;)V
    .registers 6

    .prologue
    .line 391
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$3(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$8(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    move-result-object v0

    if-nez v0, :cond_11

    .line 405
    :cond_10
    :goto_10
    return-void

    .line 395
    :cond_11
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$11(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;Z)V

    .line 397
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$8(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$3(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->setDefaultInterpolator(Landroid/view/animation/Interpolator;)V

    .line 400
    sget-object v0, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;->TIME_EXPIRATION:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

    if-ne p3, v0, :cond_10

    .line 401
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$12(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/OrientationUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 402
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$3(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->updateAllPagesToOpaque()V

    goto :goto_10
.end method

.method public onScrollerStart(II)V
    .registers 5

    .prologue
    .line 364
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$3(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$8(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 365
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$9(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;

    move-result-object v0

    if-nez v0, :cond_19

    .line 385
    :cond_18
    :goto_18
    return-void

    .line 369
    :cond_19
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$10(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 370
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$3(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$5(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->setDefaultInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_18

    .line 374
    :cond_31
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$3(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->isOverscroll()Z

    move-result v0

    .line 375
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$8(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->isOverscrollHandledBySelf()Z

    move-result v1

    .line 378
    if-eqz v0, :cond_49

    if-eqz v1, :cond_5d

    .line 379
    :cond_49
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$8(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/effect/ScreenEffectBase;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 384
    :goto_53
    iget-object v1, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$3(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectTargetInfo;->setDefaultInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_18

    .line 381
    :cond_5d
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/ScreenEffectManager$3;->this$0:Lcom/lge/launcher3/screeneffect/ScreenEffectManager;

    invoke-static {v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectManager;->access$9(Lcom/lge/launcher3/screeneffect/ScreenEffectManager;)Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/effect/OverscrollScreenEffectBase;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_53
.end method
