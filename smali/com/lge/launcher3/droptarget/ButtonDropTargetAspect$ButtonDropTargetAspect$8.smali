.class public Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$8;
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

.field private final synthetic val$d:Lcom/android/launcher3/DropTarget$DragObject;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$8;->this$0:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    iput-object p2, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$8;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    iput-object p3, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$8;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 299
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$8;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->setBackgroundColor(I)V

    .line 300
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$8;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mDrawable(Lcom/android/launcher3/ButtonDropTarget;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 301
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$8;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v1, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$8;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    invoke-static {v0, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$setDropCustomDrawablePadding(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;)V

    .line 302
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$8;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v1, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$8;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$privMethod$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 303
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$8;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mSearchDropTargetBar(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/SearchDropTargetBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/SearchDropTargetBar;->onDragEnd()V

    .line 304
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$8;->val$bdt:Lcom/android/launcher3/ButtonDropTarget;

    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mLauncher(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0xdc

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 305
    return-void
.end method
