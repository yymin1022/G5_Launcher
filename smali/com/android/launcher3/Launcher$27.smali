.class Lcom/android/launcher3/Launcher$27;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field private final synthetic val$newScreenIndex:I

.field private final synthetic val$startBounceAnimRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;ILjava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$27;->this$0:Lcom/android/launcher3/Launcher;

    iput p2, p0, Lcom/android/launcher3/Launcher$27;->val$newScreenIndex:I

    iput-object p3, p0, Lcom/android/launcher3/Launcher$27;->val$startBounceAnimRunnable:Ljava/lang/Runnable;

    .line 4049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 4051
    iget-object v0, p0, Lcom/android/launcher3/Launcher$27;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_1b

    .line 4052
    iget-object v0, p0, Lcom/android/launcher3/Launcher$27;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget v1, p0, Lcom/android/launcher3/Launcher$27;->val$newScreenIndex:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 4053
    iget-object v0, p0, Lcom/android/launcher3/Launcher$27;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$27;->val$startBounceAnimRunnable:Ljava/lang/Runnable;

    .line 4054
    sget v2, Lcom/android/launcher3/Launcher;->NEW_APPS_ANIMATION_DELAY:I

    int-to-long v2, v2

    .line 4053
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4056
    :cond_1b
    return-void
.end method
