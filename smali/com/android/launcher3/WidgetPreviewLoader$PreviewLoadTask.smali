.class public Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;
.super Landroid/os/AsyncTask;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/WidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mBitmapToRecycle:Landroid/graphics/Bitmap;

.field private final mCaller:Lcom/lge/launcher3/widgettray/PreviewAppliable;

.field private final mInfo:Ljava/lang/Object;

.field final mKey:Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;

.field private final mPreviewHeight:I

.field private final mPreviewWidth:I

.field mVersions:[J

.field final synthetic this$0:Lcom/android/launcher3/WidgetPreviewLoader;


# direct methods
.method constructor <init>(Lcom/android/launcher3/WidgetPreviewLoader;Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;Ljava/lang/Object;IILcom/lge/launcher3/widgettray/PreviewAppliable;)V
    .registers 7

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    .line 586
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 588
    iput-object p2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    .line 589
    iput-object p3, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mInfo:Ljava/lang/Object;

    .line 590
    iput p5, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    .line 591
    iput p4, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    .line 592
    iput-object p6, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mCaller:Lcom/lge/launcher3/widgettray/PreviewAppliable;

    .line 597
    return-void
.end method

.method static synthetic access$3(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;)Lcom/android/launcher3/WidgetPreviewLoader;
    .registers 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 604
    invoke-virtual {p0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 641
    :cond_7
    :goto_7
    return-object v3

    .line 607
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v1, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    monitor-enter v1

    .line 609
    :try_start_d
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_64

    .line 607
    :goto_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_8b

    .line 621
    if-nez v3, :cond_28

    .line 622
    iget v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    iget v1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 625
    :cond_28
    invoke-virtual {p0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 628
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    invoke-virtual {v0, v1, v3, p0}, Lcom/android/launcher3/WidgetPreviewLoader;->readFromDb(Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;Landroid/graphics/Bitmap;Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 630
    invoke-virtual {p0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_62

    if-nez v0, :cond_62

    .line 634
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    iget-object v1, v1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/WidgetPreviewLoader;->getPackageVersion(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mVersions:[J

    .line 636
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mCaller:Lcom/lge/launcher3/widgettray/PreviewAppliable;

    invoke-interface {v0}, Lcom/lge/launcher3/widgettray/PreviewAppliable;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Launcher;

    .line 639
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mInfo:Ljava/lang/Object;

    iget v4, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    iget v5, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/WidgetPreviewLoader;->generatePreview(Lcom/android/launcher3/Launcher;Ljava/lang/Object;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_62
    move-object v3, v0

    .line 641
    goto :goto_7

    .line 609
    :cond_64
    :try_start_64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 610
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 611
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    if-ne v4, v5, :cond_15

    .line 612
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    if-ne v4, v5, :cond_15

    .line 614
    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v2, v2, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v3, v0

    .line 615
    goto :goto_1b

    .line 607
    :catchall_8b
    move-exception v0

    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_64 .. :try_end_8d} :catchall_8b

    throw v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 679
    if-eqz p1, :cond_e

    .line 680
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$2;-><init>(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 689
    :cond_e
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mCaller:Lcom/lge/launcher3/widgettray/PreviewAppliable;

    invoke-interface {v0, p1}, Lcom/lge/launcher3/widgettray/PreviewAppliable;->applyPreview(Landroid/graphics/Bitmap;)V

    .line 649
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mVersions:[J

    if-eqz v0, :cond_16

    .line 650
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;-><init>(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 672
    :goto_15
    return-void

    .line 670
    :cond_16
    iput-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    goto :goto_15
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
