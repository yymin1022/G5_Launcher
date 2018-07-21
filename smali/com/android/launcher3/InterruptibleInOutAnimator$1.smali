.class Lcom/android/launcher3/InterruptibleInOutAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InterruptibleInOutAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/InterruptibleInOutAnimator;-><init>(Landroid/view/View;JFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/InterruptibleInOutAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher3/InterruptibleInOutAnimator;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator$1;->this$0:Lcom/android/launcher3/InterruptibleInOutAnimator;

    .line 56
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator$1;->this$0:Lcom/android/launcher3/InterruptibleInOutAnimator;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mDirection:I

    .line 60
    return-void
.end method
