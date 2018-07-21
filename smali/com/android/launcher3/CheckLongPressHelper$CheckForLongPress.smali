.class Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;
.super Ljava/lang/Object;
.source "CheckLongPressHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CheckLongPressHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/CheckLongPressHelper;


# direct methods
.method constructor <init>(Lcom/android/launcher3/CheckLongPressHelper;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher3/CheckLongPressHelper;

    iget-object v0, v0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher3/CheckLongPressHelper;

    iget-object v0, v0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 34
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher3/CheckLongPressHelper;

    iget-boolean v0, v0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    if-nez v0, :cond_3b

    .line 36
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher3/CheckLongPressHelper;

    iget-object v0, v0, Lcom/android/launcher3/CheckLongPressHelper;->mListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_3c

    .line 37
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher3/CheckLongPressHelper;

    iget-object v0, v0, Lcom/android/launcher3/CheckLongPressHelper;->mListener:Landroid/view/View$OnLongClickListener;

    iget-object v1, p0, Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher3/CheckLongPressHelper;

    iget-object v1, v1, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 41
    :goto_2c
    if-eqz v0, :cond_3b

    .line 42
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher3/CheckLongPressHelper;

    iget-object v0, v0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher3/CheckLongPressHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 46
    :cond_3b
    return-void

    .line 39
    :cond_3c
    iget-object v0, p0, Lcom/android/launcher3/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher3/CheckLongPressHelper;

    iget-object v0, v0, Lcom/android/launcher3/CheckLongPressHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    goto :goto_2c
.end method
