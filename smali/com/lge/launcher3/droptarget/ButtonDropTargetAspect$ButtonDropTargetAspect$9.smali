.class public Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$9;
.super Ljava/lang/Object;
.source "ButtonDropTargetAspect.aj"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$around$com_lge_launcher3_droptarget_ButtonDropTargetAspect$7$cb90742f(Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

.field private final synthetic val$bdt:Lcom/android/launcher3/ButtonDropTarget;

.field private final synthetic val$onDropAction:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$9;->this$0:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    iput-object p2, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$9;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    iput-object p3, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$9;->val$onDropAction:Ljava/lang/Runnable;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$9;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v1, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$9;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v2, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$9;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v3, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$9;->val$onDropAction:Ljava/lang/Runnable;

    sget-object v4, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;->CLOSE:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;

    invoke-static {v1, v2, v3, v4}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getCreateCircularReveal(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/Runnable;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;)Landroid/animation/Animator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/animation/Animator;)V

    .line 312
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$9;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 314
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$9;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    instance-of v0, v0, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$9;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    instance-of v0, v0, Lcom/lge/launcher3/droptarget/DisableDropTarget;

    if-eqz v0, :cond_36

    .line 315
    :cond_26
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$9;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {v0}, Lcom/android/launcher3/ButtonDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/LGSoundManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/LGSoundManager;

    move-result-object v0

    sget-object v1, Lcom/lge/launcher3/util/LGSoundManager$SoundType;->SOUND_INDEX_UNINSTALL:Lcom/lge/launcher3/util/LGSoundManager$SoundType;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/util/LGSoundManager;->play(Lcom/lge/launcher3/util/LGSoundManager$SoundType;)V

    .line 319
    :goto_35
    return-void

    .line 317
    :cond_36
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$9;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {v0}, Lcom/android/launcher3/ButtonDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/LGSoundManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/LGSoundManager;

    move-result-object v0

    sget-object v1, Lcom/lge/launcher3/util/LGSoundManager$SoundType;->SOUND_INDEX_REMOVE:Lcom/lge/launcher3/util/LGSoundManager$SoundType;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/util/LGSoundManager;->play(Lcom/lge/launcher3/util/LGSoundManager$SoundType;)V

    goto :goto_35
.end method
