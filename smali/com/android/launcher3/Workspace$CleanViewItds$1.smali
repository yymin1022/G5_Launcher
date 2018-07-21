.class public Lcom/android/launcher3/Workspace$CleanViewItds$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "CleanViewItds.aj"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->ajc$interMethod$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Workspace$initScaleGestureDetector(Lcom/android/launcher3/Workspace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mScaleFactor:F

.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$CleanViewItds$1;->this$0:Lcom/android/launcher3/Workspace;

    .line 37
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$1;->mScaleFactor:F

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 6

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 49
    iget v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$1;->mScaleFactor:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$1;->mScaleFactor:F

    .line 50
    const v0, 0x3dcccccd    # 0.1f

    iget v1, p0, Lcom/android/launcher3/Workspace$CleanViewItds$1;->mScaleFactor:F

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$1;->mScaleFactor:F

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$1;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mCleanViewAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$1;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mCleanViewAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 53
    const/4 v0, 0x0

    .line 64
    :goto_2d
    return v0

    .line 55
    :cond_2e
    iget v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$1;->mScaleFactor:F

    const v1, 0x3fa66666    # 1.3f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_42

    .line 56
    iget-object v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$1;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$enterCleanViewMode(Lcom/android/launcher3/Launcher;)V

    .line 57
    iput v3, p0, Lcom/android/launcher3/Workspace$CleanViewItds$1;->mScaleFactor:F

    .line 60
    :cond_42
    iget v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$1;->mScaleFactor:F

    const v1, 0x3f333333    # 0.7f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_56

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$1;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->ajc$get$mLauncher(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/CleanViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$exitCleanViewMode(Lcom/android/launcher3/Launcher;)V

    .line 62
    iput v3, p0, Lcom/android/launcher3/Workspace$CleanViewItds$1;->mScaleFactor:F

    .line 64
    :cond_56
    const/4 v0, 0x1

    goto :goto_2d
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 4

    .prologue
    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$1;->mScaleFactor:F

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$1;->this$0:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/Workspace;->isMultiTouch:Z

    .line 44
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher3/Workspace$CleanViewItds$1;->this$0:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/Workspace;->isMultiTouch:Z

    .line 70
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 71
    return-void
.end method
