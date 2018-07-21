.class Lcom/android/launcher3/WorkspaceStateTransitionAnimation$3;
.super Ljava/lang/Object;
.source "WorkspaceStateTransitionAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->animateBackgroundGradient(Lcom/android/launcher3/TransitionStates;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

.field private final synthetic val$dragLayer:Lcom/android/launcher3/DragLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Lcom/android/launcher3/DragLayer;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$3;->this$0:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iput-object p2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$3;->val$dragLayer:Lcom/android/launcher3/DragLayer;

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 582
    iget-object v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$3;->val$dragLayer:Lcom/android/launcher3/DragLayer;

    .line 583
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 582
    invoke-virtual {v1, v0}, Lcom/android/launcher3/DragLayer;->setBackgroundAlpha(F)V

    .line 584
    return-void
.end method
