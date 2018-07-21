.class Lcom/android/launcher3/WeightWatcher$2;
.super Ljava/lang/Object;
.source "WeightWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/WeightWatcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/WeightWatcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/WeightWatcher;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/WeightWatcher$2;->this$0:Lcom/android/launcher3/WeightWatcher;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$2;->this$0:Lcom/android/launcher3/WeightWatcher;

    check-cast p2, Lcom/android/launcher3/MemoryTracker$MemoryTrackerInterface;

    invoke-virtual {p2}, Lcom/android/launcher3/MemoryTracker$MemoryTrackerInterface;->getService()Lcom/android/launcher3/MemoryTracker;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/WeightWatcher;->mMemoryService:Lcom/android/launcher3/MemoryTracker;

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$2;->this$0:Lcom/android/launcher3/WeightWatcher;

    invoke-virtual {v0}, Lcom/android/launcher3/WeightWatcher;->initViews()V

    .line 95
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$2;->this$0:Lcom/android/launcher3/WeightWatcher;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/WeightWatcher;->mMemoryService:Lcom/android/launcher3/MemoryTracker;

    .line 99
    return-void
.end method
