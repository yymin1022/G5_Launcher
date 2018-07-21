.class abstract Lcom/lge/lgewidgetlib/extview/ExtViewHandler;
.super Ljava/lang/Object;
.source "ExtViewHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field static final TAG:Ljava/lang/String; = "ExtViewEffect"


# instance fields
.field mAnimationMngr:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

.field mClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

.field mColorView:Landroid/view/View;

.field mEventListener:Lcom/lge/lgewidgetlib/extview/ExtViewEventListener;

.field mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

.field mExtViewLayout:Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;

.field mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

.field mLauncherIF:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

.field mWidgetHostLayer:Landroid/view/View;

.field mWidgetViewParam:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;Lcom/lge/lgewidgetlib/extview/ExtViewEventListener;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mExtViewClient:Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewClientProxy;

    .line 24
    iput-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mExtViewLayout:Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;

    .line 29
    iput-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mColorView:Landroid/view/View;

    .line 30
    iput-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mWidgetHostLayer:Landroid/view/View;

    .line 34
    iput-object p1, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    .line 35
    iput-object p3, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mLauncherIF:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    .line 37
    new-instance v0, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    invoke-virtual {v1}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;-><init>(Landroid/content/Context;Landroid/view/View$OnTouchListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mExtViewLayout:Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;

    .line 38
    iput-object p4, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mEventListener:Lcom/lge/lgewidgetlib/extview/ExtViewEventListener;

    .line 39
    iput-object p2, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

    .line 40
    return-void
.end method

.method private initAnimator([Landroid/view/View;)V
    .registers 8

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->getWidgetView()Landroid/view/View;

    move-result-object v1

    .line 137
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mAnimationMngr:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    if-nez v0, :cond_1b

    .line 138
    new-instance v0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    .line 139
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->getExtViewHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->getTopMarginOfExtView()I

    move-result v4

    iget-object v5, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mEventListener:Lcom/lge/lgewidgetlib/extview/ExtViewEventListener;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;-><init>(Landroid/view/View;[Landroid/view/View;IILcom/lge/lgewidgetlib/extview/ExtViewEventListener;)V

    .line 138
    iput-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mAnimationMngr:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    .line 144
    :goto_1a
    return-void

    .line 141
    :cond_1b
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mAnimationMngr:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->reset()V

    goto :goto_1a
.end method


# virtual methods
.method abstract attachWidget(Landroid/view/View;)V
.end method

.method cancelAnimation()V
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mAnimationMngr:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mAnimationMngr:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 169
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mAnimationMngr:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->cancel()V

    .line 171
    :cond_11
    return-void
.end method

.method abstract detachWidget(Landroid/view/View;)V
.end method

.method abstract getExtViewHeight()I
.end method

.method abstract getExtViewParam(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
.end method

.method getLocationOfBaseLayer()[I
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 84
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 86
    return-object v1
.end method

.method protected getTopMarginOfExtView()I
    .registers 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->getLocationOfBaseLayer()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    invoke-virtual {v1}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getHeight()I

    move-result v1

    .line 91
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->getWidgetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 90
    add-int/2addr v0, v1

    return v0
.end method

.method final getWidgetView()Landroid/view/View;
    .registers 4

    .prologue
    .line 123
    const-class v0, Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    .line 124
    const-string v2, "mView"

    .line 123
    invoke-static {v0, v1, v2}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mColorView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 192
    :goto_4
    return-void

    .line 188
    :cond_5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    .line 189
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mAnimationMngr:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->isNeedToBeMoved()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    .line 191
    :goto_12
    iget-object v2, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mColorView:Landroid/view/View;

    iget-object v3, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mLauncherIF:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    invoke-interface {v3, v1, v0}, Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;->calcExtWidgetBg(FZ)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 189
    :cond_1e
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

    if-nez v0, :cond_6

    .line 179
    :goto_5
    return v1

    .line 178
    :cond_6
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mClient:Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;->notifyClickOutSide()V

    goto :goto_5
.end method

.method reverseAnimation()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mAnimationMngr:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->isNeedToBeMoved()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->setShowColorView(Z)V

    .line 164
    :cond_c
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mAnimationMngr:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->reverse()V

    .line 165
    return-void
.end method

.method public setExtViewBackgroudDimming(ZI)V
    .registers 6

    .prologue
    .line 43
    const-string v0, "ExtViewEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setExtViewBackgroundDimming = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mExtViewLayout:Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;

    invoke-virtual {v0, p1, p2}, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->setDimming(ZI)V

    .line 45
    return-void
.end method

.method public setExtViewBackgroudDimming(ZII)V
    .registers 7

    .prologue
    .line 48
    const-string v0, "ExtViewEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setExtViewBackgroundDimming = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mExtViewLayout:Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->setDimming(ZII)V

    .line 50
    return-void
.end method

.method public setShowColorView(Z)V
    .registers 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mColorView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 132
    :goto_4
    return-void

    .line 131
    :cond_5
    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mColorView:Landroid/view/View;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_e
    const/4 v0, 0x4

    goto :goto_a
.end method

.method startAnimation([Landroid/view/View;)V
    .registers 6

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->initAnimator([Landroid/view/View;)V

    .line 149
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mAnimationMngr:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->isNeedToBeMoved()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->setShowColorView(Z)V

    .line 151
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mLauncherIF:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    invoke-interface {v0, v1}, Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;->getHostViewBlurLayout(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mWidgetHostLayer:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mWidgetHostLayer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :goto_1f
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mAnimationMngr:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->start()V

    .line 158
    return-void

    .line 154
    :cond_25
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mColorView:Landroid/view/View;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mLauncherIF:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;->calcExtWidgetBg(FZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1f
.end method

.method protected transitionToExtView()V
    .registers 6

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mLauncherIF:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    if-eqz v0, :cond_4f

    .line 62
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->getWidgetView()Landroid/view/View;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mWidgetViewParam:Landroid/widget/FrameLayout$LayoutParams;

    .line 65
    const-string v0, "ExtViewEffect"

    const-string v2, "try attaching ExtView to dragLayout"

    invoke-static {v0, v2}, Lcom/lge/lgewidgetlib/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mExtViewLayout:Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;

    invoke-virtual {p0, v0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->attachWidget(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    invoke-virtual {v0, v1}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->removeView(Landroid/view/View;)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->getExtViewParam(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 72
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    invoke-virtual {v3}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mColorView:Landroid/view/View;

    .line 73
    invoke-virtual {p0, v1}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->getExtViewParam(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 74
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->getTopMarginOfExtView()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 75
    iget-object v3, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mExtViewLayout:Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;

    iget-object v4, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mColorView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v2, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mExtViewLayout:Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;

    invoke-virtual {v2, v1, v0}, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    const-string v0, "ExtViewEffect"

    const-string v1, "transitionToExtView Success"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_4f
    return-void
.end method

.method transitionToNormalView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mLauncherIF:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    if-eqz v0, :cond_9

    .line 97
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mWidgetViewParam:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_a

    .line 120
    :cond_9
    :goto_9
    return-void

    .line 101
    :cond_a
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mColorView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 102
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mExtViewLayout:Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mColorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->removeView(Landroid/view/View;)V

    .line 103
    iput-object v2, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mColorView:Landroid/view/View;

    .line 106
    :cond_17
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mWidgetHostLayer:Landroid/view/View;

    if-eqz v0, :cond_23

    .line 107
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mWidgetHostLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iput-object v2, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mWidgetHostLayer:Landroid/view/View;

    .line 111
    :cond_23
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->getWidgetView()Landroid/view/View;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mExtViewLayout:Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;

    invoke-virtual {v1, v0}, Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;->removeView(Landroid/view/View;)V

    .line 113
    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mExtViewLayout:Lcom/lge/lgewidgetlib/extview/ExtViewContainerLayout;

    invoke-virtual {p0, v1}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->detachWidget(Landroid/view/View;)V

    .line 115
    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mWidgetViewParam:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    invoke-virtual {v1, v0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->addView(Landroid/view/View;)V

    .line 117
    iput-object v2, p0, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;->mWidgetViewParam:Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_9
.end method
