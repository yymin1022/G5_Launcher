.class public Lcom/android/launcher3/CheckLongPressHelper;
.super Ljava/lang/Object;
.source "CheckLongPressHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;
    }
.end annotation


# instance fields
.field mHasPerformedLongPress:Z

.field mListener:Landroid/view/View$OnLongClickListener;

.field private mLongPressTimeout:I

.field private mPendingCheckForLongPress:Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mLongPressTimeout:I

    .line 50
    iput-object p1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V
    .registers 4

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mLongPressTimeout:I

    .line 54
    iput-object p1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    .line 55
    iput-object p2, p0, Lcom/android/launcher3/CheckLongPressHelper;->mListener:Landroid/view/View$OnLongClickListener;

    .line 56
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .registers 3

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;

    if-eqz v0, :cond_11

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;

    .line 80
    :cond_11
    return-void
.end method

.method public hasPerformedLongPress()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return v0
.end method

.method public postCheckForLongPress()V
    .registers 5

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;

    if-nez v0, :cond_e

    .line 69
    new-instance v0, Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;-><init>(Lcom/android/launcher3/CheckLongPressHelper;)V

    iput-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;

    .line 71
    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;

    iget v2, p0, Lcom/android/launcher3/CheckLongPressHelper;->mLongPressTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    return-void
.end method

.method public setLongPressTimeout(I)V
    .registers 2

    .prologue
    .line 62
    iput p1, p0, Lcom/android/launcher3/CheckLongPressHelper;->mLongPressTimeout:I

    .line 63
    return-void
.end method
