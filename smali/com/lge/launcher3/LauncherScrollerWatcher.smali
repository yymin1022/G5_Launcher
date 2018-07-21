.class public Lcom/lge/launcher3/LauncherScrollerWatcher;
.super Ljava/lang/Object;
.source "LauncherScrollerWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;,
        Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/launcher3/LauncherScrollerWatcher;


# instance fields
.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/lge/launcher3/LauncherScrollerWatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/LauncherScrollerWatcher;->TAG:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/LauncherScrollerWatcher;->sInstance:Lcom/lge/launcher3/LauncherScrollerWatcher;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/LauncherScrollerWatcher;->mListeners:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/lge/launcher3/LauncherScrollerWatcher;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/lge/launcher3/LauncherScrollerWatcher;->sInstance:Lcom/lge/launcher3/LauncherScrollerWatcher;

    if-nez v0, :cond_b

    .line 27
    new-instance v0, Lcom/lge/launcher3/LauncherScrollerWatcher;

    invoke-direct {v0}, Lcom/lge/launcher3/LauncherScrollerWatcher;-><init>()V

    sput-object v0, Lcom/lge/launcher3/LauncherScrollerWatcher;->sInstance:Lcom/lge/launcher3/LauncherScrollerWatcher;

    .line 30
    :cond_b
    sget-object v0, Lcom/lge/launcher3/LauncherScrollerWatcher;->sInstance:Lcom/lge/launcher3/LauncherScrollerWatcher;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 43
    if-nez p1, :cond_4

    .line 56
    :cond_3
    :goto_3
    return v0

    .line 47
    :cond_4
    iget-object v1, p0, Lcom/lge/launcher3/LauncherScrollerWatcher;->mListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_f

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/launcher3/LauncherScrollerWatcher;->mListeners:Ljava/util/ArrayList;

    .line 51
    :cond_f
    iget-object v1, p0, Lcom/lge/launcher3/LauncherScrollerWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 55
    iget-object v0, p0, Lcom/lge/launcher3/LauncherScrollerWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lge/launcher3/LauncherScrollerWatcher;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 132
    iget-object v0, p0, Lcom/lge/launcher3/LauncherScrollerWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/LauncherScrollerWatcher;->mListeners:Ljava/util/ArrayList;

    .line 135
    :cond_c
    return-void
.end method

.method public notifyFinishListeners(IILcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;)V
    .registers 6

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/launcher3/LauncherScrollerWatcher;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 112
    :cond_4
    return-void

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/LauncherScrollerWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;

    .line 110
    invoke-interface {v0, p1, p2, p3}, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;->onScrollerFinish(IILcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;)V

    goto :goto_b
.end method

.method public notifyStartListeners(II)V
    .registers 5

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lge/launcher3/LauncherScrollerWatcher;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 97
    :cond_4
    return-void

    .line 94
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/LauncherScrollerWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;

    .line 95
    invoke-interface {v0, p1, p2}, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;->onScrollerStart(II)V

    goto :goto_b
.end method

.method public removeAllListeners()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/launcher3/LauncherScrollerWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    return-void
.end method

.method public removeListener(Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerListener;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 64
    if-nez p1, :cond_4

    .line 76
    :cond_3
    :goto_3
    return v0

    .line 68
    :cond_4
    iget-object v1, p0, Lcom/lge/launcher3/LauncherScrollerWatcher;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lge/launcher3/LauncherScrollerWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    iget-object v0, p0, Lcom/lge/launcher3/LauncherScrollerWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/lge/launcher3/LauncherScrollerWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_20

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/LauncherScrollerWatcher;->mListeners:Ljava/util/ArrayList;

    .line 76
    :cond_20
    const/4 v0, 0x1

    goto :goto_3
.end method
