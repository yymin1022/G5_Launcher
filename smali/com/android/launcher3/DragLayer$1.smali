.class Lcom/android/launcher3/DragLayer$1;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DragLayer;

.field private final synthetic val$child:Landroid/view/View;

.field private final synthetic val$onFinishAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/DragLayer$1;->this$0:Lcom/android/launcher3/DragLayer;

    iput-object p2, p0, Lcom/android/launcher3/DragLayer$1;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/DragLayer$1;->val$onFinishAnimationRunnable:Ljava/lang/Runnable;

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/launcher3/DragLayer$1;->val$child:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lcom/android/launcher3/DragLayer$1;->val$onFinishAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    .line 654
    iget-object v0, p0, Lcom/android/launcher3/DragLayer$1;->val$onFinishAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 656
    :cond_f
    return-void
.end method
