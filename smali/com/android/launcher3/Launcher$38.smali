.class Lcom/android/launcher3/Launcher$38;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->bindAppsMoved(Ljava/util/ArrayList;Lcom/android/launcher3/FolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field private final synthetic val$items:Ljava/util/ArrayList;

.field private final synthetic val$target:Lcom/android/launcher3/FolderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;Lcom/android/launcher3/FolderInfo;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$38;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$38;->val$items:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/Launcher$38;->val$target:Lcom/android/launcher3/FolderInfo;

    .line 4500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 4502
    iget-object v0, p0, Lcom/android/launcher3/Launcher$38;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$38;->val$items:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/Launcher$38;->val$target:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->bindAppsMoved(Ljava/util/ArrayList;Lcom/android/launcher3/FolderInfo;)V

    .line 4503
    return-void
.end method
