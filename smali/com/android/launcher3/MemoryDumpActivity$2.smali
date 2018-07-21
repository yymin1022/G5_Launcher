.class Lcom/android/launcher3/MemoryDumpActivity$2;
.super Ljava/lang/Object;
.source "MemoryDumpActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/MemoryDumpActivity;->startDump(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$andThen:Ljava/lang/Runnable;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/MemoryDumpActivity$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/MemoryDumpActivity$2;->val$andThen:Ljava/lang/Runnable;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .prologue
    .line 159
    const-string v0, "MemoryDumpActivity"

    const-string v1, "service connected, dumping..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/MemoryDumpActivity$2;->val$context:Landroid/content/Context;

    .line 161
    check-cast p2, Lcom/android/launcher3/MemoryTracker$MemoryTrackerInterface;

    invoke-virtual {p2}, Lcom/android/launcher3/MemoryTracker$MemoryTrackerInterface;->getService()Lcom/android/launcher3/MemoryTracker;

    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Lcom/android/launcher3/MemoryDumpActivity;->dumpHprofAndShare(Landroid/content/Context;Lcom/android/launcher3/MemoryTracker;)V

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/MemoryDumpActivity$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/MemoryDumpActivity$2;->val$andThen:Ljava/lang/Runnable;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher3/MemoryDumpActivity$2;->val$andThen:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 164
    :cond_20
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .prologue
    .line 167
    return-void
.end method
