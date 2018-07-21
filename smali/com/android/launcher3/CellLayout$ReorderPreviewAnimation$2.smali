.class Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->animate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    .line 2173
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2176
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iput v1, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    .line 2177
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iput v1, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    .line 2178
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    invoke-static {v1}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->access$0(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getChildrenScale()F

    move-result v1

    iput v1, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    .line 2179
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->repeating:Z

    .line 2180
    return-void
.end method
