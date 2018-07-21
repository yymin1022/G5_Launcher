.class public interface abstract Lcom/android/launcher3/Launcher$LauncherOverlay;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LauncherOverlay"
.end annotation


# virtual methods
.method public abstract onScrollChange(FZ)V
.end method

.method public abstract onScrollInteractionBegin()V
.end method

.method public abstract onScrollInteractionEnd()V
.end method

.method public abstract setOverlayCallbacks(Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;)V
.end method
