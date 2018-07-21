.class Lcom/android/launcher3/Folder$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Folder;->animateOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Folder;

.field private final synthetic val$updateAnimationFlag:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/Folder;Z)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Folder$9;->this$0:Lcom/android/launcher3/Folder;

    iput-boolean p2, p0, Lcom/android/launcher3/Folder$9;->val$updateAnimationFlag:Z

    .line 574
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/launcher3/Folder$9;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderEditText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x279

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 579
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 580
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 581
    iget-object v0, p0, Lcom/android/launcher3/Folder$9;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 582
    const v2, 0x10c000d

    .line 581
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 580
    :goto_24
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 584
    iget-object v0, p0, Lcom/android/launcher3/Folder$9;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->animateMarkers()V

    .line 586
    iget-boolean v0, p0, Lcom/android/launcher3/Folder$9;->val$updateAnimationFlag:Z

    if-eqz v0, :cond_3f

    .line 587
    iget-object v0, p0, Lcom/android/launcher3/Folder$9;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    const/4 v1, 0x4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/Folder$9;->this$0:Lcom/android/launcher3/Folder;

    iget-object v3, v3, Lcom/android/launcher3/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/FolderInfo;->setOption(IZLandroid/content/Context;)V

    .line 589
    :cond_3f
    return-void

    .line 583
    :cond_40
    new-instance v0, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    goto :goto_24
.end method
