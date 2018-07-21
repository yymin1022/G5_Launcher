.class Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherClientCallbacksImpl;
.super Ljava/lang/Object;
.source "LauncherExtension.java"

# interfaces
.implements Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LauncherClientCallbacksImpl"
.end annotation


# instance fields
.field private mWasAttached:Z

.field final synthetic this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)V
    .registers 3

    .prologue
    .line 712
    iput-object p1, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherClientCallbacksImpl;->this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherClientCallbacksImpl;->mWasAttached:Z

    return-void
.end method


# virtual methods
.method public onOverlayScrollChanged(F)V
    .registers 3

    .prologue
    .line 716
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherClientCallbacksImpl;->this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-static {v0, p1}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->access$1(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;F)V

    .line 717
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherClientCallbacksImpl;->this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->access$3(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;->onScrollChanged(F)V

    .line 718
    return-void
.end method

.method public onServiceStateChanged(ZZ)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 722
    iget-boolean v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherClientCallbacksImpl;->mWasAttached:Z

    if-eq v0, p1, :cond_19

    .line 723
    iput-boolean p1, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherClientCallbacksImpl;->mWasAttached:Z

    .line 725
    iget-object v0, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherClientCallbacksImpl;->this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-static {v0}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;->access$4(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;)Lcom/lge/launcher3/LauncherExtension;

    move-result-object v2

    if-eqz p1, :cond_1a

    new-instance v0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherOverlayImpl;

    iget-object v3, p0, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherClientCallbacksImpl;->this$1:Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;

    invoke-direct {v0, v3, v1}, Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherOverlayImpl;-><init>(Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl;Lcom/lge/launcher3/LauncherExtension$LauncherCallbacksImpl$LauncherOverlayImpl;)V

    :goto_16
    invoke-virtual {v2, v0}, Lcom/lge/launcher3/LauncherExtension;->setLauncherOverlay(Lcom/android/launcher3/Launcher$LauncherOverlay;)V

    .line 727
    :cond_19
    return-void

    :cond_1a
    move-object v0, v1

    .line 725
    goto :goto_16
.end method
