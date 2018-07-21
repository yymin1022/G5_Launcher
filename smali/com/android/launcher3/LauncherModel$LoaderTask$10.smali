.class Lcom/android/launcher3/LauncherModel$LoaderTask$10;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$LoaderTask;->bindWorkspace(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

.field private final synthetic val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field private final synthetic val$t:J


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;J)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$10;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$10;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput-wide p3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$10;->val$t:J

    .line 2971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 2973
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$10;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$10;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 2974
    if-eqz v0, :cond_d

    .line 2975
    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->finishBindingItems()V

    .line 2979
    :cond_d
    sget-boolean v0, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v0, :cond_32

    .line 2980
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bound workspace in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2981
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$10;->val$t:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2980
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    :cond_32
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$10;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    .line 2985
    return-void
.end method
