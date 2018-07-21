.class public Lcom/android/launcher3/StylusEventHelper;
.super Ljava/lang/Object;
.source "StylusEventHelper.java"


# instance fields
.field private mIsButtonPressed:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/launcher3/StylusEventHelper;->mView:Landroid/view/View;

    .line 22
    return-void
.end method

.method public static isStylusButtonPressed(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v2, :cond_f

    .line 82
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 81
    const/4 v0, 0x1

    :cond_f
    return v0
.end method


# virtual methods
.method public checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 32
    iget-object v2, p0, Lcom/android/launcher3/StylusEventHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    .line 34
    iget-object v3, p0, Lcom/android/launcher3/StylusEventHelper;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isLongClickable()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 63
    :cond_19
    :goto_19
    return v0

    .line 39
    :cond_1a
    invoke-static {p1}, Lcom/android/launcher3/StylusEventHelper;->isStylusButtonPressed(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_64

    goto :goto_19

    .line 42
    :pswitch_26
    iput-boolean v0, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    .line 43
    if-eqz v3, :cond_19

    iget-object v2, p0, Lcom/android/launcher3/StylusEventHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->performLongClick()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 44
    iput-boolean v1, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    move v0, v1

    .line 45
    goto :goto_19

    .line 49
    :pswitch_36
    iget-object v4, p0, Lcom/android/launcher3/StylusEventHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v4, v5, v6, v2}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 50
    iget-boolean v2, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    if-nez v2, :cond_58

    if-eqz v3, :cond_58

    iget-object v2, p0, Lcom/android/launcher3/StylusEventHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->performLongClick()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 51
    iput-boolean v1, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    move v0, v1

    .line 52
    goto :goto_19

    .line 53
    :cond_58
    iget-boolean v1, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    if-eqz v1, :cond_19

    if-nez v3, :cond_19

    .line 54
    iput-boolean v0, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    goto :goto_19

    .line 60
    :pswitch_61
    iput-boolean v0, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    goto :goto_19

    .line 40
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_26
        :pswitch_61
        :pswitch_36
        :pswitch_61
    .end packed-switch
.end method

.method public inStylusButtonPressed()Z
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    return v0
.end method
