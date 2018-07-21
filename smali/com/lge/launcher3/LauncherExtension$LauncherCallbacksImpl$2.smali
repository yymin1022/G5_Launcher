.class Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$2;
.super Ljava/lang/Object;
.source "LauncherExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$2;->this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$2;->this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->access$4(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)Lcom/lge/launcher3/LauncherExtension;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/launcher3/LauncherExtension;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_31

    .line 395
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$2;->this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->access$4(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)Lcom/lge/launcher3/LauncherExtension;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/launcher3/LauncherExtension;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->moveToDefaultScreen(Z)V

    .line 396
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$2;->this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->access$0(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)Lcom/google/android/libraries/launcherclient/LauncherClient;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 397
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$2;->this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->access$0(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)Lcom/google/android/libraries/launcherclient/LauncherClient;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$2;->this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-static {v1}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->access$4(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)Lcom/lge/launcher3/LauncherExtension;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/launcher3/LauncherExtension;->access$14(Lcom/lge/launcher3/LauncherExtension;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->hideOverlay(Z)V

    .line 400
    :cond_31
    return-void
.end method
