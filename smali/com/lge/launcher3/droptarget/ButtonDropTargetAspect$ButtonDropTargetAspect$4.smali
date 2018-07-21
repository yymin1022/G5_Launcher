.class public Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$4;
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

.field private final synthetic val$onRestoreDropTarget:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$4;->this$0:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    iput-object p2, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$4;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    iput-object p3, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$4;->val$onRestoreDropTarget:Ljava/lang/Runnable;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$4;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mDrawable(Lcom/android/launcher3/ButtonDropTarget;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 186
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$4;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->setBackgroundColor(I)V

    .line 187
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$4;->val$onRestoreDropTarget:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 188
    return-void
.end method
