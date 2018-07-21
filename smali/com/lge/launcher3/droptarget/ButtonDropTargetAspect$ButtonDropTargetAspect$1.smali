.class public Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$1;
.super Ljava/lang/Object;
.source "ButtonDropTargetAspect.aj"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$around$com_lge_launcher3_droptarget_ButtonDropTargetAspect$2$5f011312(Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

.field private final synthetic val$bdt:Lcom/android/launcher3/ButtonDropTarget;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$1;->this$0:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    iput-object p2, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$1;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$1;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mDrawable(Lcom/android/launcher3/ButtonDropTarget;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 107
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$1;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v1, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$1;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v2, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$1;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    new-instance v3, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$1$ButtonDropTargetAspect$1;

    invoke-direct {v3, p0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$1$ButtonDropTargetAspect$1;-><init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$1;)V

    .line 112
    sget-object v4, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;->OPEN:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;

    .line 107
    invoke-static {v1, v2, v3, v4}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getCreateCircularReveal(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/Runnable;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;)Landroid/animation/Animator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/animation/Animator;)V

    .line 113
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$1;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 114
    return-void
.end method
