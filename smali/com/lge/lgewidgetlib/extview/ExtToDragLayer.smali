.class Lcom/lge/lgewidgetlib/extview/ExtToDragLayer;
.super Lcom/lge/lgewidgetlib/extview/ExtViewHandler;
.source "ExtToDragLayer.java"


# direct methods
.method public constructor <init>(Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;Lcom/lge/lgewidgetlib/extview/ExtViewEventListener;)V
    .registers 5

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/lgewidgetlib/extview/ExtViewHandler;-><init>(Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;Lcom/lge/lgewidgetlib/extview/IAppWidgetExtViewClient;Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;Lcom/lge/lgewidgetlib/extview/ExtViewEventListener;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected attachWidget(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 37
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 39
    iget-object v1, p0, Lcom/lge/lgewidgetlib/extview/ExtToDragLayer;->mLauncherIF:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    invoke-interface {v1, p1, v0}, Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;->attachWidgetToExtLayer(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 40
    return-void
.end method

.method protected detachWidget(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtToDragLayer;->mLauncherIF:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    invoke-interface {v0, p1}, Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;->detachWidgetFromExtLayer(Landroid/view/View;)V

    .line 45
    return-void
.end method

.method protected getExtViewHeight()I
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/ExtToDragLayer;->mLauncherIF:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;->getScreenHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/extview/ExtToDragLayer;->getTopMarginOfExtView()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getExtViewParam(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 7

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 17
    new-array v0, v1, [I

    .line 18
    new-array v1, v1, [I

    .line 19
    iget-object v2, p0, Lcom/lge/lgewidgetlib/extview/ExtToDragLayer;->mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    invoke-virtual {v2, v0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getLocationInWindow([I)V

    .line 20
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 21
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 21
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 25
    iget-object v2, p0, Lcom/lge/lgewidgetlib/extview/ExtToDragLayer;->mLauncherIF:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    invoke-interface {v2}, Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;->getWorkSpaceWidth()I

    move-result v2

    aget v3, v0, v4

    iget-object v4, p0, Lcom/lge/lgewidgetlib/extview/ExtToDragLayer;->mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    invoke-virtual {v4}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 31
    :goto_39
    const/4 v2, 0x1

    aget v0, v0, v2

    iget-object v2, p0, Lcom/lge/lgewidgetlib/extview/ExtToDragLayer;->mHostView:Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    invoke-virtual {v2}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 32
    return-object v1

    .line 28
    :cond_4d
    aget v2, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_39
.end method
