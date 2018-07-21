.class Lcom/android/launcher3/LauncherModel$3$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$3;

.field private final synthetic val$allAppsApps:Ljava/util/ArrayList;

.field private final synthetic val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$3;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$3$1;->this$1:Lcom/android/launcher3/LauncherModel$3;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$3$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$3$1;->val$allAppsApps:Ljava/util/ArrayList;

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 428
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$3$1;->this$1:Lcom/android/launcher3/LauncherModel$3;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$3;->access$0(Lcom/android/launcher3/LauncherModel$3;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$3$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_18

    if-eqz v0, :cond_18

    .line 430
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$3$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$3$1;->val$allAppsApps:Ljava/util/ArrayList;

    invoke-interface {v0, v2, v2, v2, v1}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 432
    :cond_18
    return-void
.end method
