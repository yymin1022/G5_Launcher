.class Lcom/android/launcher3/DragLayer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/DragLayer;->animateView(Lcom/android/launcher3/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DragLayer;

.field private final synthetic val$animationEndStyle:I

.field private final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DragLayer;Ljava/lang/Runnable;I)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/DragLayer$3;->this$0:Lcom/android/launcher3/DragLayer;

    iput-object p2, p0, Lcom/android/launcher3/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/launcher3/DragLayer$3;->val$animationEndStyle:I

    .line 787
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/launcher3/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 790
    iget-object v0, p0, Lcom/android/launcher3/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 792
    :cond_9
    iget v0, p0, Lcom/android/launcher3/DragLayer$3;->val$animationEndStyle:I

    packed-switch v0, :pswitch_data_16

    .line 799
    :goto_e
    return-void

    .line 794
    :pswitch_f
    iget-object v0, p0, Lcom/android/launcher3/DragLayer$3;->this$0:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->clearAnimatedView()V

    goto :goto_e

    .line 792
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_f
    .end packed-switch
.end method
