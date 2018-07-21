.class Lcom/android/launcher3/Launcher$35;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->bindRestoreItemsChange(Ljava/util/HashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field private final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Ljava/util/HashSet;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$35;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$35;->val$updates:Ljava/util/HashSet;

    .line 4435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 4437
    iget-object v0, p0, Lcom/android/launcher3/Launcher$35;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$35;->val$updates:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->bindRestoreItemsChange(Ljava/util/HashSet;)V

    .line 4438
    return-void
.end method
