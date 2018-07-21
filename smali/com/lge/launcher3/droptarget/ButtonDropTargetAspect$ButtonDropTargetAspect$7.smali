.class public Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$7;
.super Ljava/lang/Object;
.source "ButtonDropTargetAspect.aj"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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

.field private final synthetic val$onRestoreDropTarget:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$7;->this$0:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    iput-object p2, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$7;->val$onRestoreDropTarget:Ljava/lang/Runnable;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$7;->val$onRestoreDropTarget:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 221
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 226
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 231
    return-void
.end method
