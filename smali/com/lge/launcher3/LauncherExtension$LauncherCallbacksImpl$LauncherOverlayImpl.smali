.class Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherOverlayImpl;
.super Ljava/lang/Object;
.source "LauncherExtension.java"

# interfaces
.implements Lcom/android/launcher3/Launcher$LauncherOverlay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherOverlayImpl"
.end annotation


# instance fields
.field mForwardMotion:Z

.field final synthetic this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;


# direct methods
.method private constructor <init>(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)V
    .registers 2

    .prologue
    .line 676
    iput-object p1, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherOverlayImpl;->this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherOverlayImpl;)V
    .registers 3

    .prologue
    .line 676
    invoke-direct {p0, p1}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherOverlayImpl;-><init>(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)V

    return-void
.end method


# virtual methods
.method public onScrollChange(FZ)V
    .registers 4

    .prologue
    .line 697
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherOverlayImpl;->this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-static {v0, p1}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->access$1(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;F)V

    .line 698
    iget-boolean v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherOverlayImpl;->mForwardMotion:Z

    if-eqz v0, :cond_1a

    .line 699
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherOverlayImpl;->this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->access$0(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)Lcom/google/android/libraries/launcherclient/LauncherClient;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 700
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherOverlayImpl;->this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->access$0(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)Lcom/google/android/libraries/launcherclient/LauncherClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->updateMove(F)V

    .line 703
    :cond_1a
    return-void
.end method

.method public onScrollInteractionBegin()V
    .registers 2

    .prologue
    .line 681
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherOverlayImpl;->mForwardMotion:Z

    .line 682
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherOverlayImpl;->this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->access$0(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)Lcom/google/android/libraries/launcherclient/LauncherClient;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 683
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherOverlayImpl;->this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->access$0(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)Lcom/google/android/libraries/launcherclient/LauncherClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->startMove()V

    .line 685
    :cond_14
    return-void
.end method

.method public onScrollInteractionEnd()V
    .registers 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherOverlayImpl;->this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->access$0(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)Lcom/google/android/libraries/launcherclient/LauncherClient;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 690
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherOverlayImpl;->this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->access$0(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)Lcom/google/android/libraries/launcherclient/LauncherClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->endMove()V

    .line 692
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherOverlayImpl;->mForwardMotion:Z

    .line 693
    return-void
.end method

.method public setOverlayCallbacks(Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;)V
    .registers 3

    .prologue
    .line 707
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherOverlayImpl;->this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-static {v0, p1}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->access$2(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;)V

    .line 708
    return-void
.end method
