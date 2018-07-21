.class Lcom/android/launcher3/FolderIcon$FolderRingAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->animateToNaturalState()V
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
    iput-object p1, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$4;->this$1:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    .line 287
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$4;->this$1:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    iget-object v0, v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_f

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$4;->this$1:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    iget-object v0, v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$4;->this$1:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->hideFolderAccept(Lcom/android/launcher3/FolderIcon$FolderRingAnimator;)V

    .line 293
    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$4;->this$1:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    iget-object v0, v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    if-eqz v0, :cond_1f

    .line 294
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator$4;->this$1:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    iget-object v0, v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    :cond_1f
    return-void
.end method
