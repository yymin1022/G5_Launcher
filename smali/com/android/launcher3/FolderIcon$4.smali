.class Lcom/android/launcher3/FolderIcon$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/FolderIcon;

.field private final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/FolderIcon;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/FolderIcon$4;->this$0:Lcom/android/launcher3/FolderIcon;

    iput-object p2, p0, Lcom/android/launcher3/FolderIcon$4;->val$onCompleteRunnable:Ljava/lang/Runnable;

    .line 677
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$4;->this$0:Lcom/android/launcher3/FolderIcon;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/FolderIcon;->mAnimating:Z

    .line 685
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$4;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 686
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$4;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 688
    :cond_e
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$4;->this$0:Lcom/android/launcher3/FolderIcon;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/FolderIcon;->mAnimating:Z

    .line 681
    return-void
.end method
