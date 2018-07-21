.class public Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;
.super Ljava/lang/Object;
.source "FolderStateTransitionWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;,
        Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderStateChangeListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;


# instance fields
.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderStateChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->sInstance:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->sInstance:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;

    if-nez v0, :cond_b

    .line 26
    new-instance v0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;

    invoke-direct {v0}, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;-><init>()V

    sput-object v0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->sInstance:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;

    .line 29
    :cond_b
    sget-object v0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->sInstance:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;

    return-object v0
.end method

.method private notifyListeners(Lcom/android/launcher3/Folder;Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;)V
    .registers 5

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 55
    :cond_4
    return-void

    .line 52
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderStateChangeListener;

    .line 53
    invoke-interface {v0, p1, p2}, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderStateChangeListener;->onStateChanged(Lcom/android/launcher3/Folder;Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;)V

    goto :goto_b
.end method


# virtual methods
.method public addListener(Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderStateChangeListener;)Z
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    .line 66
    :cond_b
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 67
    const/4 v0, 0x0

    .line 72
    :goto_14
    return v0

    .line 70
    :cond_15
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 106
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    iput-object v1, p0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    .line 110
    :cond_c
    sput-object v1, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->sInstance:Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;

    .line 111
    return-void
.end method

.method public removeListener(Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderStateChangeListener;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_6

    .line 93
    :cond_5
    :goto_5
    return v0

    .line 84
    :cond_6
    iget-object v1, p0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 88
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1e

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->mListeners:Ljava/util/ArrayList;

    .line 93
    :cond_1e
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public setState(Lcom/android/launcher3/Folder;Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/folder/FolderStateTransitionWatcher;->notifyListeners(Lcom/android/launcher3/Folder;Lcom/lge/launcher3/folder/FolderStateTransitionWatcher$FolderState;)V

    .line 43
    return-void
.end method
