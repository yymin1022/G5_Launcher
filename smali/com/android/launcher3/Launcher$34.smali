.class Lcom/android/launcher3/Launcher$34;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field private final synthetic val$removed:Ljava/util/ArrayList;

.field private final synthetic val$updated:Ljava/util/ArrayList;

.field private final synthetic val$user:Lcom/android/launcher3/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$34;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$34;->val$updated:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/Launcher$34;->val$removed:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/Launcher$34;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 4404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 4406
    iget-object v0, p0, Lcom/android/launcher3/Launcher$34;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$34;->val$updated:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/Launcher$34;->val$removed:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/Launcher$34;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 4407
    return-void
.end method
