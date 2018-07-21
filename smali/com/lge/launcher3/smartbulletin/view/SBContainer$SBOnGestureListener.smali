.class Lcom/lge/launcher3/smartbulletin/view/SBContainer$SBOnGestureListener;
.super Ljava/lang/Object;
.source "SBContainer.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/smartbulletin/view/SBContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SBOnGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)V
    .registers 2

    .prologue
    .line 262
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$SBOnGestureListener;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    .prologue
    .line 314
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 306
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$SBOnGestureListener;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->access$4(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 307
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$SBOnGestureListener;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->access$4(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 309
    :cond_1c
    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    .prologue
    .line 271
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    .line 277
    const/4 v0, 0x0

    .line 278
    iget-object v3, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$SBOnGestureListener;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    invoke-static {v3, v1, v2}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->access$0(Lcom/lge/launcher3/smartbulletin/view/SBContainer;II)Landroid/view/View;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_1f

    move-object v0, v1

    .line 280
    check-cast v0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    .line 281
    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->removeOnceBadge()V

    .line 282
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;

    .line 285
    :cond_1f
    invoke-static {}, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->getState()Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    move-result-object v1

    sget-object v2, Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;->COLLAPSE:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    if-ne v1, v2, :cond_7e

    .line 286
    sget-object v1, Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;->OPEN:Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;

    invoke-static {v1}, Lcom/lge/launcher3/smartbulletin/view/SBStateManager;->onChangeState(Lcom/lge/launcher3/smartbulletin/view/SBStateManager$SBState;)V

    .line 287
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$SBOnGestureListener;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    invoke-static {v1}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->access$1(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->resetScrollAnimation()V

    .line 288
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$SBOnGestureListener;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    invoke-static {v1}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->access$1(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->processExpand()Ljava/util/ArrayList;

    move-result-object v1

    .line 289
    if-eqz v0, :cond_52

    .line 290
    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 291
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$SBOnGestureListener;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    invoke-virtual {v2, v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->getAnimatorscrollToComponent(Ljava/lang/String;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_52
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$SBOnGestureListener;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v2}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->access$2(Lcom/lge/launcher3/smartbulletin/view/SBContainer;Landroid/animation/AnimatorSet;)V

    .line 295
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$SBOnGestureListener;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->access$3(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 296
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$SBOnGestureListener;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->access$3(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 297
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$SBOnGestureListener;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->access$3(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 299
    const/4 v0, 0x1

    .line 301
    :goto_7d
    return v0

    :cond_7e
    const/4 v0, 0x0

    goto :goto_7d
.end method
