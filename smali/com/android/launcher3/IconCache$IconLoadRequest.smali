.class public Lcom/android/launcher3/IconCache$IconLoadRequest;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/IconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconLoadRequest"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    iput-object p1, p0, Lcom/android/launcher3/IconCache$IconLoadRequest;->mRunnable:Ljava/lang/Runnable;

    .line 764
    iput-object p2, p0, Lcom/android/launcher3/IconCache$IconLoadRequest;->mHandler:Landroid/os/Handler;

    .line 765
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/launcher3/IconCache$IconLoadRequest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/IconCache$IconLoadRequest;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 769
    return-void
.end method
