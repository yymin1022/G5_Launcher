.class Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LauncherOverlayCallbacksImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 2

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(F)V
    .registers 3

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_d

    .line 1186
    iget-object v0, p0, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->onOverlayScrollChanged(F)V

    .line 1188
    :cond_d
    return-void
.end method
