.class Lcom/android/launcher3/LauncherModel$2$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$2;

.field private final synthetic val$updates:Ljava/util/ArrayList;

.field private final synthetic val$user:Lcom/android/launcher3/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$2;Ljava/util/ArrayList;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$2$1;->this$1:Lcom/android/launcher3/LauncherModel$2;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$2$1;->val$updates:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$2$1;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$2$1;->this$1:Lcom/android/launcher3/LauncherModel$2;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$2;->access$0(Lcom/android/launcher3/LauncherModel$2;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_18

    .line 400
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$2$1;->val$updates:Ljava/util/ArrayList;

    .line 401
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$2$1;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 400
    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 403
    :cond_18
    return-void
.end method
