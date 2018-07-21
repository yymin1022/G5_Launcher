.class Lcom/android/launcher3/DragView$4;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/DragView;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DragView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/DragView$4;->this$0:Lcom/android/launcher3/DragView;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/launcher3/DragView$4;->this$0:Lcom/android/launcher3/DragView;

    iget-object v0, v0, Lcom/android/launcher3/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 327
    return-void
.end method
