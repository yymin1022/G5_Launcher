.class public Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;
.super Ljava/lang/Object;
.source "ButtonDropTargetAspect.aj"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;
    }
.end annotation

.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$droptarget$ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE:[I

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$droptarget$ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE()[I
    .registers 3

    .prologue
    .line 30
    sget-object v0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->$SWITCH_TABLE$com$lge$launcher3$droptarget$ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;->values()[Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;->CLOSE:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;

    invoke-virtual {v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;->OPEN:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;

    invoke-virtual {v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21

    :goto_1e
    sput-object v0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->$SWITCH_TABLE$com$lge$launcher3$droptarget$ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE:[I

    goto :goto_4

    :catch_21
    move-exception v1

    goto :goto_1e

    :catch_23
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_droptarget_ButtonDropTargetAspect$2$5f011312proceed(Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_droptarget_ButtonDropTargetAspect$4$5b0b1e4cproceed(Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_droptarget_ButtonDropTargetAspect$5$8131719fproceed(Lcom/android/launcher3/DragSource;Ljava/lang/Object;ILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 242
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p3, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_droptarget_ButtonDropTargetAspect$6$6cc015bdproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_droptarget_ButtonDropTargetAspect$7$cb90742fproceed(Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 276
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$DISAPPEAR_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)I
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$DISAPPEAR_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$OPEN_CLOSE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)I
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$OPEN_CLOSE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$TRANSLATE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)I
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$TRANSLATE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/animation/Animator;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mDragViewOriginColor(Lcom/android/launcher3/ButtonDropTarget;)I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDragViewOriginColor:I

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mDropTargetTitle(Lcom/android/launcher3/ButtonDropTarget;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mDropTargetTitle(Lcom/android/launcher3/ButtonDropTarget;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mIsAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsDragEntered(Lcom/android/launcher3/ButtonDropTarget;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mIsDragEntered(Lcom/android/launcher3/ButtonDropTarget;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToLeftAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mTranslateToLeftAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$DISAPPEAR_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 2

    .prologue
    .line 45
    const/16 v0, 0xc8

    invoke-static {p0, v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$DISAPPEAR_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;I)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$OPEN_CLOSE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 2

    .prologue
    .line 43
    const/16 v0, 0xc8

    invoke-static {p0, v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$OPEN_CLOSE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;I)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$TRANSLATE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 2

    .prologue
    .line 44
    const/16 v0, 0x8c

    invoke-static {p0, v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$TRANSLATE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;I)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mAni(Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 1

    .prologue
    .line 35
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mDragViewOriginColor(Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 1

    .prologue
    .line 33
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mDropTargetTitle(Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 1

    .prologue
    .line 31
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;Z)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsDragEntered(Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsDragEntered(Lcom/android/launcher3/ButtonDropTarget;Z)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToLeftAni(Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 1

    .prologue
    .line 36
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 1

    .prologue
    .line 37
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$DISAPPEAR_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$set$DISAPPEAR_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;I)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$OPEN_CLOSE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$set$OPEN_CLOSE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;I)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$TRANSLATE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$set$TRANSLATE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;I)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/animation/Animator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$set$mAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mDragViewOriginColor(Lcom/android/launcher3/ButtonDropTarget;I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDragViewOriginColor:I

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mDropTargetTitle(Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$set$mDropTargetTitle(Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$set$mIsAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;Z)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsDragEntered(Lcom/android/launcher3/ButtonDropTarget;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$set$mIsDragEntered(Lcom/android/launcher3/ButtonDropTarget;Z)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToLeftAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/view/animation/Animation;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$set$mTranslateToLeftAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/view/animation/Animation;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$set$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getCreateCircularReveal(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/Runnable;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;)Landroid/animation/Animator;
    .registers 13

    .prologue
    const/4 v8, 0x0

    .line 385
    invoke-virtual {p1}, Lcom/android/launcher3/ButtonDropTarget;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 386
    invoke-virtual {p1}, Lcom/android/launcher3/ButtonDropTarget;->getHeight()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    .line 388
    int-to-double v4, v1

    int-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v3, v4

    .line 390
    const/4 v0, 0x0

    .line 392
    invoke-static {}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->$SWITCH_TABLE$com$lge$launcher3$droptarget$ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE()[I

    move-result-object v4

    invoke-virtual {p3}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_48

    .line 402
    :goto_22
    invoke-static {p1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$OPEN_CLOSE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 403
    new-instance v1, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 404
    new-instance v1, Lcom/android/launcher3/ButtonDropTarget$ButtonDropTargetAspect$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/ButtonDropTarget$ButtonDropTargetAspect$1;-><init>(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 417
    return-object v0

    .line 394
    :pswitch_3e
    invoke-static {p1, v1, v2, v8, v3}, Lcom/android/launcher3/util/UiThreadCircularReveal;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_22

    .line 398
    :pswitch_43
    invoke-static {p1, v1, v2, v3, v8}, Lcom/android/launcher3/util/UiThreadCircularReveal;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_22

    .line 392
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_43
    .end packed-switch
.end method

.method public static ajc$interMethod$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getDropTargetCenter(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;II)Landroid/graphics/Rect;
    .registers 7

    .prologue
    .line 371
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 372
    invoke-virtual {p1, v0}, Lcom/android/launcher3/ButtonDropTarget;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 375
    invoke-virtual {p1}, Lcom/android/launcher3/ButtonDropTarget;->getWidth()I

    move-result v1

    sub-int v1, p2, v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 376
    invoke-virtual {p1}, Lcom/android/launcher3/ButtonDropTarget;->getHeight()I

    move-result v2

    sub-int v2, p3, v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    .line 378
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 380
    return-object v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getIconCenter(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;IIII)Landroid/graphics/Rect;
    .registers 11

    .prologue
    .line 341
    invoke-static {p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mLauncher(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    .line 344
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 345
    invoke-virtual {v0, p0, v2}, Lcom/android/launcher3/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 353
    invoke-virtual {p1}, Lcom/android/launcher3/ButtonDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 354
    iget v0, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 355
    sub-int v1, v0, p4

    .line 361
    :goto_23
    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, p5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 362
    add-int v4, v3, p5

    .line 364
    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 366
    return-object v2

    .line 357
    :cond_33
    iget v0, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    .line 358
    add-int v0, v1, p4

    goto :goto_23
.end method

.method public static ajc$interMethod$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$isAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;)Z
    .registers 4

    .prologue
    .line 421
    invoke-static {p0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 422
    invoke-static {p0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mLauncher(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/DragController;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/DragControllerItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_DragControllerItds$com_android_launcher3_DragController$getDragDistance(Lcom/android/launcher3/DragController;)F

    move-result v0

    .line 423
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    .line 425
    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2d

    const/4 v0, 0x1

    :goto_25
    invoke-static {p0, v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;Z)V

    .line 427
    :cond_28
    invoke-static {p0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;)Z

    move-result v0

    return v0

    .line 425
    :cond_2d
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static ajc$interMethod$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$restoreNormalStatus(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 4

    .prologue
    .line 52
    invoke-static {p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mLauncher(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_40

    .line 53
    invoke-static {p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mLauncher(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLargeTablet:Z

    if-eqz v0, :cond_28

    .line 54
    invoke-static {p0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mDropTargetTitle(Lcom/android/launcher3/ButtonDropTarget;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/ButtonDropTarget;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :goto_1b
    invoke-static {p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mDrawable(Lcom/android/launcher3/ButtonDropTarget;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 64
    invoke-static {p1, p1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$setCustomDrawablePadding(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;)V

    .line 65
    return-void

    .line 55
    :cond_28
    invoke-static {p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mLauncher(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_38

    .line 56
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/android/launcher3/ButtonDropTarget;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 58
    :cond_38
    invoke-static {p0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mDropTargetTitle(Lcom/android/launcher3/ButtonDropTarget;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/ButtonDropTarget;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 61
    :cond_40
    invoke-static {p0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mDropTargetTitle(Lcom/android/launcher3/ButtonDropTarget;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/ButtonDropTarget;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b
.end method

.method public static ajc$interMethod$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$setCustomDrawablePadding(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 74
    invoke-static {p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mSearchDropTargetBar(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/SearchDropTargetBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/SearchDropTargetBar;->getWidth()I

    move-result v0

    .line 75
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 76
    invoke-virtual {p1}, Lcom/android/launcher3/ButtonDropTarget;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {p0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mDropTargetTitle(Lcom/android/launcher3/ButtonDropTarget;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mDropTargetTitle(Lcom/android/launcher3/ButtonDropTarget;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 78
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mDrawable(Lcom/android/launcher3/ButtonDropTarget;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1e

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 79
    float-to-int v1, v0

    float-to-int v0, v0

    invoke-virtual {p1, v1, v5, v0, v5}, Lcom/android/launcher3/ButtonDropTarget;->setPaddingRelative(IIII)V

    .line 80
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$setDropCustomDrawablePadding(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-static {p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mSearchDropTargetBar(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/SearchDropTargetBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/SearchDropTargetBar;->getWidth()I

    move-result v0

    .line 84
    invoke-static {p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mDrawable(Lcom/android/launcher3/ButtonDropTarget;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 85
    float-to-int v1, v0

    float-to-int v0, v0

    invoke-virtual {p1, v1, v2, v0, v2}, Lcom/android/launcher3/ButtonDropTarget;->setPaddingRelative(IIII)V

    .line 86
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getCreateCircularReveal(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/Runnable;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;)Landroid/animation/Animator;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/ButtonDropTarget;->ajc$interMethodDispatch2$com_lge_launcher3_droptarget_ButtonDropTargetAspect$getCreateCircularReveal(Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/Runnable;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getDropTargetCenter(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;II)Landroid/graphics/Rect;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/ButtonDropTarget;->ajc$interMethodDispatch2$com_lge_launcher3_droptarget_ButtonDropTargetAspect$getDropTargetCenter(Lcom/android/launcher3/ButtonDropTarget;II)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getIconCenter(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;IIII)Landroid/graphics/Rect;
    .registers 7

    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/ButtonDropTarget;->ajc$interMethodDispatch2$com_lge_launcher3_droptarget_ButtonDropTargetAspect$getIconCenter(Lcom/android/launcher3/ButtonDropTarget;IIII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$isAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->isAcceptableDragged()Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$restoreNormalStatus(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$interMethodDispatch2$com_lge_launcher3_droptarget_ButtonDropTargetAspect$restoreNormalStatus(Lcom/android/launcher3/ButtonDropTarget;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$setCustomDrawablePadding(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$interMethodDispatch2$com_lge_launcher3_droptarget_ButtonDropTargetAspect$setCustomDrawablePadding(Lcom/android/launcher3/ButtonDropTarget;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$setDropCustomDrawablePadding(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$interMethodDispatch2$com_lge_launcher3_droptarget_ButtonDropTargetAspect$setDropCustomDrawablePadding(Lcom/android/launcher3/ButtonDropTarget;)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_droptarget_ButtonDropTargetAspect"

    sget-object v2, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_droptarget_ButtonDropTargetAspect$1$97a46da5(Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(protected void ButtonDropTarget.onFinishInflate())"
    .end annotation

    .prologue
    .line 68
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ButtonDropTarget;

    .line 69
    invoke-virtual {v0}, Lcom/android/launcher3/ButtonDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mDropTargetTitle(Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public ajc$after$com_lge_launcher3_droptarget_ButtonDropTargetAspect$3$81ae56b(Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "d"
        value = "(execution(public void ButtonDropTarget.onDragOver(..)) && args(d))"
    .end annotation

    .prologue
    .line 151
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ButtonDropTarget;

    .line 153
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsDragEntered(Lcom/android/launcher3/ButtonDropTarget;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$isAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 154
    invoke-virtual {v0, p1}, Lcom/android/launcher3/ButtonDropTarget;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 156
    :cond_15
    return-void
.end method

.method public ajc$around$com_lge_launcher3_droptarget_ButtonDropTargetAspect$2$5f011312(Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 12
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "d,ajc$aroundClosure"
        value = "(execution(public void onDragEnter(..)) && (args(d) && within(ButtonDropTarget)))"
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 89
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ButtonDropTarget;

    .line 91
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsDragEntered(Lcom/android/launcher3/ButtonDropTarget;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$isAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 148
    :cond_13
    :goto_13
    return-void

    .line 95
    :cond_14
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsDragEntered(Lcom/android/launcher3/ButtonDropTarget;Z)V

    .line 97
    const v1, 0x8000

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->sendAccessibilityEvent(I)V

    .line 98
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/DragView;->getSolidColor()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/ButtonDropTarget;->mDragViewOriginColor:I

    .line 100
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DragView;->setColor(I)V

    .line 101
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DragView;->setAlpha(F)V

    .line 103
    new-instance v6, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$1;

    invoke-direct {v6, p0, v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$1;-><init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/ButtonDropTarget;)V

    .line 117
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mLauncher(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_4d

    .line 118
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_13

    .line 121
    :cond_4d
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mDrawable(Lcom/android/launcher3/ButtonDropTarget;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 122
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mDrawable(Lcom/android/launcher3/ButtonDropTarget;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 123
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/DragView;->getMeasuredWidth()I

    move-result v2

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/DragView;->getMeasuredHeight()I

    move-result v3

    move-object v1, v0

    invoke-static/range {v0 .. v5}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getIconCenter(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;IIII)Landroid/graphics/Rect;

    move-result-object v1

    .line 125
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mLauncher(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    div-int/lit8 v2, v2, 0x2

    .line 127
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int v1, v2, v1

    int-to-float v1, v1

    invoke-direct {v3, v7, v1, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-static {v0, v3}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/view/animation/Animation;)V

    .line 128
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$TRANSLATE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 129
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 130
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$2;

    invoke-direct {v2, p0, v6}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$2;-><init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 146
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_13
.end method

.method public ajc$around$com_lge_launcher3_droptarget_ButtonDropTargetAspect$4$5b0b1e4c(Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 13
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "d,ajc$aroundClosure"
        value = "(execution(public void onDragExit(..)) && (args(d) && within(ButtonDropTarget)))"
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 159
    invoke-interface {p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ButtonDropTarget;

    .line 161
    invoke-static {v0, v8}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsDragEntered(Lcom/android/launcher3/ButtonDropTarget;Z)V

    .line 163
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    iget v2, v0, Lcom/android/launcher3/ButtonDropTarget;->mDragViewOriginColor:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DragView;->setColor(I)V

    .line 164
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DragView;->setAlpha(F)V

    .line 167
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mDrawable(Lcom/android/launcher3/ButtonDropTarget;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 168
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mDrawable(Lcom/android/launcher3/ButtonDropTarget;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 169
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/DragView;->getMeasuredWidth()I

    move-result v2

    .line 170
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/DragView;->getMeasuredHeight()I

    move-result v3

    move-object v1, v0

    .line 169
    invoke-static/range {v0 .. v5}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getIconCenter(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;IIII)Landroid/graphics/Rect;

    move-result-object v1

    .line 171
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mLauncher(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    div-int/lit8 v2, v2, 0x2

    .line 173
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mLauncher(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v3, v3, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v3, :cond_6d

    .line 174
    new-instance v1, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$3;

    invoke-direct {v1, p0, v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$3;-><init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/ButtonDropTarget;)V

    .line 182
    new-instance v2, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$4;-><init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/Runnable;)V

    .line 191
    iget-boolean v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez v1, :cond_6c

    .line 192
    sget-object v1, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;->CLOSE:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;

    invoke-static {v0, v0, v2, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getCreateCircularReveal(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/Runnable;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;)Landroid/animation/Animator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/animation/Animator;)V

    .line 193
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 239
    :cond_6c
    :goto_6c
    return-void

    .line 196
    :cond_6d
    new-instance v3, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$5;

    invoke-direct {v3, p0, v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$5;-><init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/ButtonDropTarget;)V

    .line 205
    new-instance v4, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$6;

    invoke-direct {v4, p0, v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$6;-><init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/ButtonDropTarget;)V

    .line 214
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int v1, v2, v1

    int-to-float v1, v1

    invoke-direct {v5, v1, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-static {v0, v5}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToLeftAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/view/animation/Animation;)V

    .line 215
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToLeftAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$TRANSLATE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 216
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToLeftAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 217
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToLeftAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$7;

    invoke-direct {v2, p0, v4}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$7;-><init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 234
    iget-boolean v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez v1, :cond_6c

    .line 235
    sget-object v1, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;->CLOSE:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;

    invoke-static {v0, v0, v3, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getCreateCircularReveal(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/Runnable;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;)Landroid/animation/Animator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/animation/Animator;)V

    .line 236
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_6c
.end method

.method public ajc$around$com_lge_launcher3_droptarget_ButtonDropTargetAspect$5$8131719f(Lcom/android/launcher3/DragSource;Ljava/lang/Object;ILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 10
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "source,info,dragAction,ajc$aroundClosure"
        value = "(execution(public void onDragStart(..)) && (args(source, info, dragAction) && within(ButtonDropTarget)))"
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 243
    invoke-interface {p5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ButtonDropTarget;

    .line 245
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ButtonDropTarget;->ajc$privMethod$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$supportsDrop(Lcom/android/launcher3/DragSource;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$set$mActive(Lcom/android/launcher3/ButtonDropTarget;Z)V

    .line 246
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mDrawable(Lcom/android/launcher3/ButtonDropTarget;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 247
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mCurrentColorAnim(Lcom/android/launcher3/ButtonDropTarget;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 248
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mCurrentColorAnim(Lcom/android/launcher3/ButtonDropTarget;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 249
    invoke-static {v0, v2}, Lcom/android/launcher3/ButtonDropTarget;->ajc$set$mCurrentColorAnim(Lcom/android/launcher3/ButtonDropTarget;Landroid/animation/AnimatorSet;)V

    .line 252
    :cond_26
    invoke-virtual {v0}, Lcom/android/launcher3/ButtonDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mActive(Lcom/android/launcher3/ButtonDropTarget;)Z

    move-result v2

    if-eqz v2, :cond_4c

    move v2, v3

    :goto_33
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 254
    invoke-static {v0, v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$restoreNormalStatus(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;)V

    .line 255
    invoke-virtual {v0}, Lcom/android/launcher3/ButtonDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 257
    invoke-static {v0, v3}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;Z)V

    .line 258
    invoke-static {v0, v3}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsDragEntered(Lcom/android/launcher3/ButtonDropTarget;Z)V

    .line 259
    return-void

    .line 252
    :cond_4c
    const/16 v2, 0x8

    goto :goto_33
.end method

.method public ajc$around$com_lge_launcher3_droptarget_ButtonDropTargetAspect$6$6cc015bd(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 6
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(public boolean ButtonDropTarget.isDropEnabled())"
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ButtonDropTarget;

    .line 263
    invoke-virtual {v0}, Lcom/android/launcher3/ButtonDropTarget;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 265
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$isAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;)Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    .line 273
    :goto_12
    return v0

    .line 269
    :cond_13
    invoke-static {v2}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    .line 270
    goto :goto_12

    .line 273
    :cond_1f
    invoke-static {p1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$around$com_lge_launcher3_droptarget_ButtonDropTargetAspect$6$6cc015bdproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    goto :goto_12
.end method

.method public ajc$around$com_lge_launcher3_droptarget_ButtonDropTargetAspect$7$cb90742f(Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 21
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "d,ajc$aroundClosure"
        value = "(execution(public void onDrop(..)) && (args(d) && within(ButtonDropTarget)))"
    .end annotation

    .prologue
    .line 277
    invoke-interface/range {p3 .. p3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/launcher3/ButtonDropTarget;

    .line 278
    invoke-static {v11}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mDrawable(Lcom/android/launcher3/ButtonDropTarget;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 279
    const-string v2, ""

    invoke-virtual {v11, v2}, Lcom/android/launcher3/ButtonDropTarget;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-static {v11}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 282
    invoke-static {v11}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 283
    const/4 v2, 0x0

    invoke-static {v11, v2}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/view/animation/Animation;)V

    .line 286
    :cond_26
    invoke-static {v11}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mLauncher(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v2

    .line 287
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 288
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 289
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/DragView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/DragView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v11, v11, v3, v5}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getDropTargetCenter(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;II)Landroid/graphics/Rect;

    move-result-object v5

    .line 291
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v3, v6

    .line 292
    invoke-static {v11}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mSearchDropTargetBar(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/SearchDropTargetBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/SearchDropTargetBar;->deferOnDragEnd()V

    .line 294
    invoke-static {v11}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mLauncher(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    const-string v7, "Home_RemoveItemByTrashCan"

    invoke-static {v3, v7}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 296
    new-instance v3, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v11, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$8;-><init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 308
    new-instance v14, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$9;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11, v3}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$9;-><init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/Runnable;)V

    .line 322
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    const/high16 v7, -0x10000

    invoke-virtual {v3, v7}, Lcom/android/launcher3/DragView;->setColor(I)V

    .line 323
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    const v7, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v7}, Lcom/android/launcher3/DragView;->setAlpha(F)V

    .line 325
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e4ccccd    # 0.2f

    const v10, 0x3e4ccccd    # 0.2f

    .line 326
    invoke-static {v11}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$DISAPPEAR_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)I

    move-result v11

    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v13, 0x40000000    # 2.0f

    invoke-direct {v12, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 327
    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 328
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 325
    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher3/DragLayer;->animateView(Lcom/android/launcher3/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 329
    return-void
.end method

.method public ajc$before$com_lge_launcher3_droptarget_ButtonDropTargetAspect$8$dfdd584f(ZIIIILorg/aspectj/lang/JoinPoint;)V
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = "changed,left,top,right,bottom"
        value = "(execution(protected void ButtonDropTarget.onLayout(..)) && args(changed, left, top, right, bottom))"
    .end annotation

    .prologue
    .line 333
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ButtonDropTarget;

    .line 334
    if-eqz p1, :cond_b

    .line 335
    invoke-static {v0, v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$setCustomDrawablePadding(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;)V

    .line 337
    :cond_b
    return-void
.end method
