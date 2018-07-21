.class Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest$1;
.super Ljava/lang/Object;
.source "WidgetPreviewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->cleanup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;


# direct methods
.method constructor <init>(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

    invoke-static {v0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->access$0(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;)Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v0

    iget-object v1, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    monitor-enter v1

    .line 568
    :try_start_9
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

    invoke-static {v0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->access$0(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;)Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

    iget-object v2, v2, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->mTask:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v2, v2, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 567
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_23

    .line 570
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->mTask:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    .line 571
    return-void

    .line 567
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method
