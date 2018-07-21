.class Lcom/android/launcher3/DeferredHandler$IdleRunnable;
.super Ljava/lang/Object;
.source "DeferredHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunnable"
.end annotation


# instance fields
.field mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/launcher3/DeferredHandler;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DeferredHandler;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/launcher3/DeferredHandler$IdleRunnable;->this$0:Lcom/android/launcher3/DeferredHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/android/launcher3/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 66
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher3/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 70
    return-void
.end method
