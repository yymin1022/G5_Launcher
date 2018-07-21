.class public interface abstract Lcom/android/launcher3/FolderInfo$FolderListener;
.super Ljava/lang/Object;
.source "FolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/FolderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "FolderListener"
.end annotation


# virtual methods
.method public abstract onAdd(Lcom/android/launcher3/ShortcutInfo;)V
.end method

.method public abstract onAdd(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onColorChanged()V
.end method

.method public abstract onItemsChanged()V
.end method

.method public abstract onRemove(Lcom/android/launcher3/ShortcutInfo;)V
.end method

.method public abstract onRemove(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTitleChanged(Ljava/lang/CharSequence;)V
.end method
