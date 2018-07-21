.class public Lcom/android/launcher3/WeightWatcher;
.super Landroid/widget/LinearLayout;
.source "WeightWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/WeightWatcher$ProcessWatcher;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR:I = -0x40000000

.field private static final MSG_START:I = 0x1

.field private static final MSG_STOP:I = 0x2

.field private static final MSG_UPDATE:I = 0x3

.field private static final RAM_GRAPH_PSS_COLOR:I = -0x663400

.field private static final RAM_GRAPH_RSS_COLOR:I = -0x670000

.field private static final TEXT_COLOR:I = -0x1

.field private static final UPDATE_RATE:I = 0x1388


# instance fields
.field mHandler:Landroid/os/Handler;

.field mMemoryService:Lcom/android/launcher3/MemoryTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/WeightWatcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Lcom/android/launcher3/WeightWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/WeightWatcher$1;-><init>(Lcom/android/launcher3/WeightWatcher;)V

    iput-object v0, p0, Lcom/android/launcher3/WeightWatcher;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/android/launcher3/WeightWatcher$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/WeightWatcher$2;-><init>(Lcom/android/launcher3/WeightWatcher;)V

    .line 101
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/launcher3/MemoryTracker;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 104
    invoke-virtual {p0, v3}, Lcom/android/launcher3/WeightWatcher;->setOrientation(I)V

    .line 106
    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/WeightWatcher;->setBackgroundColor(I)V

    .line 107
    return-void
.end method

.method static indexOf([II)I
    .registers 4

    .prologue
    .line 52
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-lt v0, v1, :cond_6

    .line 55
    const/4 v0, -0x1

    :cond_5
    return v0

    .line 53
    :cond_6
    aget v1, p0, v0

    if-eq v1, p1, :cond_5

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public initViews()V
    .registers 5

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/launcher3/WeightWatcher;->removeAllViews()V

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher;->mMemoryService:Lcom/android/launcher3/MemoryTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/MemoryTracker;->getTrackedProcesses()[I

    move-result-object v1

    .line 112
    const/4 v0, 0x0

    :goto_a
    array-length v2, v1

    if-lt v0, v2, :cond_e

    .line 117
    return-void

    .line 113
    :cond_e
    new-instance v2, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;

    invoke-virtual {p0}, Lcom/android/launcher3/WeightWatcher;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;-><init>(Lcom/android/launcher3/WeightWatcher;Landroid/content/Context;)V

    .line 114
    aget v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->setPid(I)V

    .line 115
    invoke-virtual {p0, v2}, Lcom/android/launcher3/WeightWatcher;->addView(Landroid/view/View;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public onAttachedToWindow()V
    .registers 3

    .prologue
    .line 125
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 127
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 131
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 133
    return-void
.end method
