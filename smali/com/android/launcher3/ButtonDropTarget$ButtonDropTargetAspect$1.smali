.class public Lcom/android/launcher3/ButtonDropTarget$ButtonDropTargetAspect$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ButtonDropTargetAspect.aj"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/ButtonDropTarget;->ajc$interMethod$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getCreateCircularReveal(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/Runnable;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/ButtonDropTarget;

.field private final synthetic val$bdt:Lcom/android/launcher3/ButtonDropTarget;

.field private final synthetic val$onNextAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget$ButtonDropTargetAspect$1;->this$0:Lcom/android/launcher3/ButtonDropTarget;

    iput-object p2, p0, Lcom/android/launcher3/ButtonDropTarget$ButtonDropTargetAspect$1;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    iput-object p3, p0, Lcom/android/launcher3/ButtonDropTarget$ButtonDropTargetAspect$1;->val$onNextAnimationRunnable:Ljava/lang/Runnable;

    .line 404
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget$ButtonDropTargetAspect$1;->val$onNextAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 413
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget$ButtonDropTargetAspect$1;->val$onNextAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 415
    :cond_9
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget$ButtonDropTargetAspect$1;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->setBackgroundColor(I)V

    .line 408
    return-void
.end method
