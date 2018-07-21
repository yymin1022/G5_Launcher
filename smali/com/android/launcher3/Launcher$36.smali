.class Lcom/android/launcher3/Launcher$36;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->bindWorkspaceComponentsRemoved(Ljava/util/HashSet;Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field private final synthetic val$components:Ljava/util/HashSet;

.field private final synthetic val$packageNames:Ljava/util/HashSet;

.field private final synthetic val$user:Lcom/android/launcher3/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Ljava/util/HashSet;Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$36;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$36;->val$packageNames:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/launcher3/Launcher$36;->val$components:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/android/launcher3/Launcher$36;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 4460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 4462
    iget-object v0, p0, Lcom/android/launcher3/Launcher$36;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$36;->val$packageNames:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/launcher3/Launcher$36;->val$components:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/launcher3/Launcher$36;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->bindWorkspaceComponentsRemoved(Ljava/util/HashSet;Ljava/util/HashSet;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 4463
    return-void
.end method
