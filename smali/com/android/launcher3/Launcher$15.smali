.class Lcom/android/launcher3/Launcher$15;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->onWindowVisibilityChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mStarted:Z

.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$15;->this$0:Lcom/android/launcher3/Launcher;

    .line 1749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher$15;->mStarted:Z

    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher3/Launcher$15;)Lcom/android/launcher3/Launcher;
    .registers 2

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/android/launcher3/Launcher$15;->this$0:Lcom/android/launcher3/Launcher;

    return-object v0
.end method


# virtual methods
.method public onDraw()V
    .registers 5

    .prologue
    .line 1752
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher$15;->mStarted:Z

    if-eqz v0, :cond_5

    .line 1770
    :goto_4
    return-void

    .line 1753
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher$15;->mStarted:Z

    .line 1759
    iget-object v0, p0, Lcom/android/launcher3/Launcher$15;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$15;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1761
    iget-object v0, p0, Lcom/android/launcher3/Launcher$15;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/android/launcher3/Launcher$15$1;

    invoke-direct {v1, p0, p0}, Lcom/android/launcher3/Launcher$15$1;-><init>(Lcom/android/launcher3/Launcher$15;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method
