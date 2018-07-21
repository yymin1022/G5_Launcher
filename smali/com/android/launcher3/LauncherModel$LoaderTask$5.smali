.class Lcom/android/launcher3/LauncherModel$LoaderTask$5;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$LoaderTask;->bindWorkspaceItems(Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/util/LongArrayMap;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

.field private final synthetic val$chunkSize:I

.field private final synthetic val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field private final synthetic val$start:I

.field private final synthetic val$workspaceItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->val$workspaceItems:Ljava/util/ArrayList;

    iput p4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->val$start:I

    iput p5, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->val$chunkSize:I

    .line 2808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2811
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 2812
    if-eqz v0, :cond_17

    .line 2813
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->val$workspaceItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->val$start:I

    iget v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->val$start:I

    iget v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->val$chunkSize:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 2815
    :cond_17
    return-void
.end method
