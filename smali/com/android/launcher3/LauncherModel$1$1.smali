.class Lcom/android/launcher3/LauncherModel$1$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$1;

.field private final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$1;Ljava/util/HashSet;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$1$1;->this$1:Lcom/android/launcher3/LauncherModel$1;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$1$1;->val$updates:Ljava/util/HashSet;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$1$1;->this$1:Lcom/android/launcher3/LauncherModel$1;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$1;->access$0(Lcom/android/launcher3/LauncherModel$1;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_11

    .line 350
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$1$1;->val$updates:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindRestoreItemsChange(Ljava/util/HashSet;)V

    .line 352
    :cond_11
    return-void
.end method
