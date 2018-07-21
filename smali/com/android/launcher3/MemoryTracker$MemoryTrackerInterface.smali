.class public Lcom/android/launcher3/MemoryTracker$MemoryTrackerInterface;
.super Landroid/os/Binder;
.source "MemoryTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/MemoryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MemoryTrackerInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/MemoryTracker;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/MemoryTracker;)V
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/launcher3/MemoryTracker$MemoryTrackerInterface;->this$0:Lcom/android/launcher3/MemoryTracker;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/android/launcher3/MemoryTracker;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/launcher3/MemoryTracker$MemoryTrackerInterface;->this$0:Lcom/android/launcher3/MemoryTracker;

    return-object v0
.end method
