.class Lcom/android/launcher3/Workspace$13;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field private final synthetic val$finalView:Landroid/view/View;

.field private final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$13;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$13;->val$finalView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/Workspace$13;->val$onCompleteRunnable:Ljava/lang/Runnable;

    .line 4017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 4020
    iget-object v0, p0, Lcom/android/launcher3/Workspace$13;->val$finalView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 4021
    iget-object v0, p0, Lcom/android/launcher3/Workspace$13;->val$finalView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4023
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/Workspace$13;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    .line 4024
    iget-object v0, p0, Lcom/android/launcher3/Workspace$13;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4026
    :cond_13
    return-void
.end method
