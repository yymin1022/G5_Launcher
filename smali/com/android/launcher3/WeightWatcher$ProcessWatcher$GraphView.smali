.class public Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;
.super Landroid/view/View;
.source "WeightWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/WeightWatcher$ProcessWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GraphView"
.end annotation


# instance fields
.field headPaint:Landroid/graphics/Paint;

.field pssPaint:Landroid/graphics/Paint;

.field final synthetic this$1:Lcom/android/launcher3/WeightWatcher$ProcessWatcher;

.field ussPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/WeightWatcher$ProcessWatcher;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;-><init>(Lcom/android/launcher3/WeightWatcher$ProcessWatcher;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 245
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/WeightWatcher$ProcessWatcher;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/android/launcher3/WeightWatcher$ProcessWatcher;

    .line 233
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 235
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;->pssPaint:Landroid/graphics/Paint;

    .line 236
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;->pssPaint:Landroid/graphics/Paint;

    const v1, -0x663400

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;->ussPaint:Landroid/graphics/Paint;

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;->ussPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x670000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;->headPaint:Landroid/graphics/Paint;

    .line 240
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;->headPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    .line 252
    iget-object v1, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/android/launcher3/WeightWatcher$ProcessWatcher;

    iget-object v1, v1, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;

    if-nez v1, :cond_f

    .line 268
    :goto_e
    return-void

    .line 254
    :cond_f
    iget-object v1, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/android/launcher3/WeightWatcher$ProcessWatcher;

    iget-object v1, v1, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;

    iget-object v1, v1, Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;->pss:[J

    array-length v8, v1

    .line 255
    int-to-float v0, v0

    int-to-float v1, v8

    div-float v9, v0, v1

    .line 256
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 257
    int-to-float v0, v7

    iget-object v1, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/android/launcher3/WeightWatcher$ProcessWatcher;

    iget-object v1, v1, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;

    iget-wide v2, v1, Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;->max:J

    long-to-float v1, v2

    div-float v11, v0, v1

    .line 261
    const/4 v0, 0x0

    move v6, v0

    :goto_2c
    if-lt v6, v8, :cond_42

    .line 266
    iget-object v0, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/android/launcher3/WeightWatcher$ProcessWatcher;

    iget-object v0, v0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;

    iget v0, v0, Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;->head:I

    int-to-float v0, v0

    mul-float v1, v0, v9

    .line 267
    const/4 v2, 0x0

    add-float v3, v1, v10

    int-to-float v4, v7

    iget-object v5, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;->headPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_e

    .line 262
    :cond_42
    int-to-float v0, v6

    mul-float v1, v0, v9

    .line 263
    int-to-float v0, v7

    iget-object v2, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/android/launcher3/WeightWatcher$ProcessWatcher;

    iget-object v2, v2, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;

    iget-object v2, v2, Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;->pss:[J

    aget-wide v2, v2, v6

    long-to-float v2, v2

    mul-float/2addr v2, v11

    sub-float v2, v0, v2

    add-float v3, v1, v10

    int-to-float v4, v7

    iget-object v5, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;->pssPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 264
    int-to-float v0, v7

    iget-object v2, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/android/launcher3/WeightWatcher$ProcessWatcher;

    iget-object v2, v2, Lcom/android/launcher3/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;

    iget-object v2, v2, Lcom/android/launcher3/MemoryTracker$ProcessMemInfo;->uss:[J

    aget-wide v2, v2, v6

    long-to-float v2, v2

    mul-float/2addr v2, v11

    sub-float v2, v0, v2

    add-float v3, v1, v10

    int-to-float v4, v7

    iget-object v5, p0, Lcom/android/launcher3/WeightWatcher$ProcessWatcher$GraphView;->ussPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 261
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2c
.end method
