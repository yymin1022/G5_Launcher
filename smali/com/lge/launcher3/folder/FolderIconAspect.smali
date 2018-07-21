.class public Lcom/lge/launcher3/folder/FolderIconAspect;
.super Ljava/lang/Object;
.source "FolderIconAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/folder/FolderIconAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_folder_FolderIconAspect$3$5e18bd4cproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    return-object v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_folder_FolderIconAspect$com_android_launcher3_FolderIcon$FolderRingAnimator$setAnimationBGColor(Lcom/android/launcher3/FolderIcon$FolderRingAnimator;)V
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    if-eqz v0, :cond_1c

    .line 66
    sget-object v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 67
    iget-object v1, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher3/FolderIcon;

    invoke-static {v2}, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderIconAspect$com_android_launcher3_FolderIcon$getColor(Lcom/android/launcher3/FolderIcon;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/folder/FolderColorUtil;->getFolderBGColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 74
    :goto_1b
    return-void

    .line 69
    :cond_1c
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    const v1, 0x7f0c002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 71
    sget-object v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 72
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lge/launcher3/folder/FolderColorUtil;->getFolderBGColor(Landroid/content/Context;I)I

    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1b
.end method

.method public static ajc$interMethod$com_lge_launcher3_folder_FolderIconAspect$com_android_launcher3_FolderIcon$getColor(Lcom/android/launcher3/FolderIcon;)I
    .registers 2

    .prologue
    .line 19
    invoke-static {p0}, Lcom/android/launcher3/FolderIcon;->ajc$get$mInfo(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/FolderInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/FolderInfo;->folderColor:I

    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_folder_FolderIconAspect$com_android_launcher3_FolderIcon$getFolderName(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/BubbleTextView;
    .registers 2

    .prologue
    .line 16
    invoke-static {p0}, Lcom/android/launcher3/FolderIcon;->ajc$get$mFolderName(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_folder_FolderIconAspect$com_android_launcher3_FolderIcon$reComputePreviewItemDrawingParams(Lcom/android/launcher3/FolderIcon;ILcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 24
    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 25
    const v1, 0x3eb33333    # 0.35f

    invoke-static {p0}, Lcom/android/launcher3/FolderIcon;->ajc$get$mAvailableSpaceInPreview(Lcom/android/launcher3/FolderIcon;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, v0

    invoke-static {p0}, Lcom/android/launcher3/FolderIcon;->ajc$get$mIntrinsicIconSize(Lcom/android/launcher3/FolderIcon;)I

    move-result v2

    int-to-float v2, v2

    div-float v4, v1, v2

    .line 27
    invoke-static {p0}, Lcom/android/launcher3/FolderIcon;->ajc$get$mAvailableSpaceInPreview(Lcom/android/launcher3/FolderIcon;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0}, Lcom/android/launcher3/FolderIcon;->ajc$get$mIntrinsicIconSize(Lcom/android/launcher3/FolderIcon;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 29
    invoke-static {p0}, Lcom/android/launcher3/FolderIcon;->ajc$get$mIntrinsicIconSize(Lcom/android/launcher3/FolderIcon;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    .line 30
    invoke-static {p0}, Lcom/android/launcher3/FolderIcon;->ajc$get$mAvailableSpaceInPreview(Lcom/android/launcher3/FolderIcon;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v6, v2

    .line 31
    invoke-static {p0}, Lcom/android/launcher3/FolderIcon;->ajc$get$mAvailableSpaceInPreview(Lcom/android/launcher3/FolderIcon;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v7, v2

    .line 32
    sub-float v2, v6, v1

    int-to-float v3, v0

    sub-float/2addr v2, v3

    .line 33
    sub-float v1, v7, v1

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    int-to-float v3, v0

    sub-float v3, v1, v3

    .line 34
    rem-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_5f

    .line 35
    int-to-float v1, v0

    add-float v2, v6, v1

    .line 38
    :cond_5f
    const/4 v1, 0x2

    if-lt p1, v1, :cond_6b

    .line 39
    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v7

    int-to-float v0, v0

    add-float v3, v1, v0

    .line 42
    :cond_6b
    if-nez p2, :cond_74

    .line 43
    new-instance v0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher3/FolderIcon;FFFI)V

    .line 50
    :goto_73
    return-object v0

    .line 45
    :cond_74
    invoke-static {p2, v2}, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->ajc$set$transX(Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;F)V

    .line 46
    invoke-static {p2, v3}, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->ajc$set$transY(Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;F)V

    .line 47
    invoke-static {p2, v4}, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->ajc$set$scale(Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;F)V

    .line 48
    invoke-static {p2, v5}, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->ajc$set$overlayAlpha(Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;I)V

    move-object v0, p2

    goto :goto_73
.end method

.method public static ajc$interMethod$com_lge_launcher3_folder_FolderIconAspect$com_android_launcher3_FolderIcon$toString(Lcom/android/launcher3/FolderIcon;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FolderIcon {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/FolderIcon;->ajc$get$mFolderName(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderIconAspect$com_android_launcher3_FolderIcon$FolderRingAnimator$setAnimationBGColor(Lcom/android/launcher3/FolderIcon$FolderRingAnimator;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->setAnimationBGColor()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderIconAspect$com_android_launcher3_FolderIcon$getColor(Lcom/android/launcher3/FolderIcon;)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getColor()I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderIconAspect$com_android_launcher3_FolderIcon$getFolderName(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/BubbleTextView;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderIconAspect$com_android_launcher3_FolderIcon$reComputePreviewItemDrawingParams(Lcom/android/launcher3/FolderIcon;ILcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/FolderIcon;->reComputePreviewItemDrawingParams(ILcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderIconAspect$com_android_launcher3_FolderIcon$toString(Lcom/android/launcher3/FolderIcon;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/folder/FolderIconAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/folder/FolderIconAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/folder/FolderIconAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/folder/FolderIconAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/folder/FolderIconAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_folder_FolderIconAspect"

    sget-object v2, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/folder/FolderIconAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/folder/FolderIconAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_folder_FolderIconAspect$1$d11abada(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/FolderIcon;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "launcher,folderIcon"
        value = "(initialization(FolderRingAnimator.new(Launcher, FolderIcon)) && args(launcher, folderIcon))"
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    return-void
.end method

.method public ajc$after$com_lge_launcher3_folder_FolderIconAspect$2$a17b2ef7(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void FolderRingAnimator.animateToAcceptState(..))"
    .end annotation

    .prologue
    .line 59
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderIconAspect$com_android_launcher3_FolderIcon$FolderRingAnimator$setAnimationBGColor(Lcom/android/launcher3/FolderIcon$FolderRingAnimator;)V

    .line 61
    return-void
.end method

.method public ajc$around$com_lge_launcher3_folder_FolderIconAspect$3$5e18bd4c(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(* *computePreviewItemDrawingParams(..))"
    .end annotation

    .prologue
    .line 77
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    .line 78
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    .line 79
    const/4 v1, 0x0

    aget-object v1, v2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v1, 0x1

    aget-object v1, v2, v1

    check-cast v1, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    invoke-static {v0, v3, v1}, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderIconAspect$com_android_launcher3_FolderIcon$reComputePreviewItemDrawingParams(Lcom/android/launcher3/FolderIcon;ILcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    return-object v0
.end method
