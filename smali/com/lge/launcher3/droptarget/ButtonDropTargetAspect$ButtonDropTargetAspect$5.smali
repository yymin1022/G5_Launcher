.class public Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$5;
.super Ljava/lang/Object;
.source "ButtonDropTargetAspect.aj"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$around$com_lge_launcher3_droptarget_ButtonDropTargetAspect$4$5b0b1e4c(Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
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
    iput-object p1, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$5;->this$0:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    iput-object p2, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$5;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$5;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mDrawable(Lcom/android/launcher3/ButtonDropTarget;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 200
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$5;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->setBackgroundColor(I)V

    .line 201
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$5;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v1, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$5;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    invoke-static {v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToLeftAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 202
    return-void
.end method
