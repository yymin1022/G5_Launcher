.class Lcom/android/launcher3/Launcher$15$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher$15;->onDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/Launcher$15;

.field private final synthetic val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher$15;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$15$1;->this$1:Lcom/android/launcher3/Launcher$15;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$15$1;->val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 1761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/android/launcher3/Launcher$15$1;->this$1:Lcom/android/launcher3/Launcher$15;

    invoke-static {v0}, Lcom/android/launcher3/Launcher$15;->access$0(Lcom/android/launcher3/Launcher$15;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_29

    .line 1764
    iget-object v0, p0, Lcom/android/launcher3/Launcher$15$1;->this$1:Lcom/android/launcher3/Launcher$15;

    invoke-static {v0}, Lcom/android/launcher3/Launcher$15;->access$0(Lcom/android/launcher3/Launcher$15;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1765
    iget-object v0, p0, Lcom/android/launcher3/Launcher$15$1;->this$1:Lcom/android/launcher3/Launcher$15;

    invoke-static {v0}, Lcom/android/launcher3/Launcher$15;->access$0(Lcom/android/launcher3/Launcher$15;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1766
    iget-object v1, p0, Lcom/android/launcher3/Launcher$15$1;->val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 1768
    :cond_29
    return-void
.end method
