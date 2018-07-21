.class Lcom/android/launcher3/Launcher$21;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->shrinkAndFadeInFolderIcon(Lcom/android/launcher3/FolderIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field private final synthetic val$cl:Lcom/android/launcher3/CellLayout;

.field private final synthetic val$fi:Lcom/android/launcher3/FolderIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/FolderIcon;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$21;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$21;->val$cl:Lcom/android/launcher3/CellLayout;

    iput-object p3, p0, Lcom/android/launcher3/Launcher$21;->val$fi:Lcom/android/launcher3/FolderIcon;

    .line 3169
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 3172
    iget-object v0, p0, Lcom/android/launcher3/Launcher$21;->val$cl:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_1a

    .line 3173
    iget-object v0, p0, Lcom/android/launcher3/Launcher$21;->val$cl:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->clearFolderLeaveBehind()V

    .line 3175
    iget-object v0, p0, Lcom/android/launcher3/Launcher$21;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$21;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mFolderIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DragLayer;->removeView(Landroid/view/View;)V

    .line 3176
    iget-object v0, p0, Lcom/android/launcher3/Launcher$21;->val$fi:Lcom/android/launcher3/FolderIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderIcon;->setVisibility(I)V

    .line 3179
    :cond_1a
    iget-object v0, p0, Lcom/android/launcher3/Launcher$21;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->access$0(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/DragController;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/launcher3/Launcher$21;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->access$0(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 3180
    iget-object v0, p0, Lcom/android/launcher3/Launcher$21;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/elastichotseat/ElasticHotseatAspect;->ajc$interMethodDispatch1$com_lge_launcher3_elastichotseat_ElasticHotseatAspect$com_android_launcher3_CellLayout$cleanupVacantCell(Lcom/android/launcher3/CellLayout;Z)V

    .line 3182
    :cond_3c
    return-void
.end method
