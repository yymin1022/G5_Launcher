.class Lcom/lge/launcher3/widgettray/LGWidgetContainerView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LGWidgetContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->setVisibilityGroupWidgetPopupView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$5;->this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;

    .line 241
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$5;->this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;

    invoke-static {v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->access$6(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 245
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$5;->this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;

    invoke-static {v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->access$6(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 250
    return-void
.end method
