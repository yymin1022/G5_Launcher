.class Lcom/android/launcher3/LauncherModel$LoaderTask$12;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$LoaderTask;->loadAllApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

.field private final synthetic val$apps:Ljava/util/List;

.field private final synthetic val$heuristic:Lcom/android/launcher3/util/ManagedProfileHeuristic;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/util/ManagedProfileHeuristic;Ljava/util/List;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$12;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$12;->val$heuristic:Lcom/android/launcher3/util/ManagedProfileHeuristic;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$12;->val$apps:Ljava/util/List;

    .line 3119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3123
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$12;->val$heuristic:Lcom/android/launcher3/util/ManagedProfileHeuristic;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$12;->val$apps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->processUserApps(Ljava/util/List;)V

    .line 3124
    return-void
.end method
