.class public Lcom/android/launcher3/allapps/AllAppsRecyclerViewContainerView;
.super Landroid/widget/FrameLayout;
.source "AllAppsRecyclerViewContainerView.java"

# interfaces
.implements Lcom/android/launcher3/BubbleTextView$BubbleTextShadowHandler;


# instance fields
.field private final mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerViewContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerViewContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v0, p1

    .line 52
    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 53
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/android/launcher3/ClickShadowView;

    invoke-direct {v1, p1}, Lcom/android/launcher3/ClickShadowView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerViewContainerView;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    .line 58
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerViewContainerView;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v1}, Lcom/android/launcher3/ClickShadowView;->getExtraSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerViewContainerView;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerViewContainerView;->addView(Landroid/view/View;II)V

    .line 60
    return-void
.end method


# virtual methods
.method public setPressedIcon(Lcom/android/launcher3/BubbleTextView;Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 64
    if-eqz p1, :cond_4

    if-nez p2, :cond_14

    .line 65
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerViewContainerView;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ClickShadowView;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerViewContainerView;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v0}, Lcom/android/launcher3/ClickShadowView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 71
    :cond_13
    :goto_13
    return-void

    .line 67
    :cond_14
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerViewContainerView;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/ClickShadowView;->setBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 68
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerViewContainerView;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/ClickShadowView;->alignWithIconView(Lcom/android/launcher3/BubbleTextView;Landroid/view/ViewGroup;)V

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerViewContainerView;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v0}, Lcom/android/launcher3/ClickShadowView;->animateShadow()V

    goto :goto_13
.end method
