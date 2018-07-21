.class Lcom/android/launcher3/FolderIcon$FolderRingAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->animateToAcceptState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher3/FolderIcon$FolderRingAnimator;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$2;->this$1:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    .line 258
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$2;->this$1:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    iget-object v0, v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    if-eqz v0, :cond_10

    .line 262
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$2;->this$1:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    iget-object v0, v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    :cond_10
    return-void
.end method
