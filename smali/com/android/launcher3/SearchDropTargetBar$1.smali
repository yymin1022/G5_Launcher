.class Lcom/android/launcher3/SearchDropTargetBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchDropTargetBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/SearchDropTargetBar;->setupAnimation(Landroid/animation/ValueAnimator;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/SearchDropTargetBar;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/SearchDropTargetBar;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/SearchDropTargetBar$1;->this$0:Lcom/android/launcher3/SearchDropTargetBar;

    iput-object p2, p0, Lcom/android/launcher3/SearchDropTargetBar$1;->val$v:Landroid/view/View;

    .line 102
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar$1;->val$v:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar$1;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 108
    :cond_b
    return-void
.end method
