.class final Lcom/lge/lgewidgetlib/extview/WidgetAnimator$UpdateListener;
.super Ljava/lang/Object;
.source "WidgetAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgewidgetlib/extview/WidgetAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;


# direct methods
.method private constructor <init>(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)V
    .registers 2

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$UpdateListener;->this$0:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;Lcom/lge/lgewidgetlib/extview/WidgetAnimator$UpdateListener;)V
    .registers 3

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$UpdateListener;-><init>(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 118
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$UpdateListener;->this$0:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-static {v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->access$0(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)Landroid/view/View;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 120
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 121
    iget-object v2, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$UpdateListener;->this$0:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-static {v2}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->access$0(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$UpdateListener;->this$0:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-static {v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->access$0(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 123
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$UpdateListener;->this$0:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-static {v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->access$1(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 124
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$UpdateListener;->this$0:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-static {v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->access$2(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)I

    move-result v0

    if-ne v1, v0, :cond_3f

    .line 125
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$UpdateListener;->this$0:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-static {v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->access$3(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)V

    .line 128
    :cond_3f
    return-void
.end method
