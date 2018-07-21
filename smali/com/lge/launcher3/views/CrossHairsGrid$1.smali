.class Lcom/lge/launcher3/views/CrossHairsGrid$1;
.super Ljava/lang/Object;
.source "CrossHairsGrid.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/views/CrossHairsGrid;->setAnimator(Landroid/view/View;I)Lcom/android/launcher3/InterruptibleInOutAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/views/CrossHairsGrid;

.field private final synthetic val$parent:Landroid/view/View;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/lge/launcher3/views/CrossHairsGrid;ILandroid/view/View;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/views/CrossHairsGrid$1;->this$0:Lcom/lge/launcher3/views/CrossHairsGrid;

    iput p2, p0, Lcom/lge/launcher3/views/CrossHairsGrid$1;->val$type:I

    iput-object p3, p0, Lcom/lge/launcher3/views/CrossHairsGrid$1;->val$parent:Landroid/view/View;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 252
    if-eqz v0, :cond_d

    .line 254
    iget v1, p0, Lcom/lge/launcher3/views/CrossHairsGrid$1;->val$type:I

    packed-switch v1, :pswitch_data_28

    .line 265
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/lge/launcher3/views/CrossHairsGrid$1;->val$parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 266
    return-void

    .line 256
    :pswitch_13
    iget-object v1, p0, Lcom/lge/launcher3/views/CrossHairsGrid$1;->this$0:Lcom/lge/launcher3/views/CrossHairsGrid;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/views/CrossHairsGrid;->access$0(Lcom/lge/launcher3/views/CrossHairsGrid;F)V

    goto :goto_d

    .line 259
    :pswitch_1d
    iget-object v1, p0, Lcom/lge/launcher3/views/CrossHairsGrid$1;->this$0:Lcom/lge/launcher3/views/CrossHairsGrid;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/views/CrossHairsGrid;->access$1(Lcom/lge/launcher3/views/CrossHairsGrid;F)V

    goto :goto_d

    .line 254
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_13
        :pswitch_1d
    .end packed-switch
.end method
