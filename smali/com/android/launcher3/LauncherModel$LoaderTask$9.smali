.class Lcom/android/launcher3/LauncherModel$LoaderTask$9;
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

.field private final synthetic val$currentScreen:I

.field private final synthetic val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;I)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$9;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$9;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput p3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$9;->val$currentScreen:I

    .line 2951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2953
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$9;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$9;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 2954
    if-eqz v0, :cond_15

    iget v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$9;->val$currentScreen:I

    const/16 v2, -0x3e9

    if-eq v1, v2, :cond_15

    .line 2955
    iget v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$9;->val$currentScreen:I

    invoke-interface {v0, v1}, Lcom/android/launcher3/LauncherModel$Callbacks;->onPageBoundSynchronously(I)V

    .line 2957
    :cond_15
    return-void
.end method
