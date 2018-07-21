.class Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;
.super Ljava/lang/Object;
.source "WidgetPreviewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

.field private final synthetic val$preview:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iput-object p2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->val$preview:Landroid/graphics/Bitmap;

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    invoke-virtual {v0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_22

    .line 656
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    invoke-static {v0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->access$3(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;)Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v1, v1, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v2, v2, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mVersions:[J

    iget-object v3, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->val$preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/WidgetPreviewLoader;->writeToDb(Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;[JLandroid/graphics/Bitmap;)V

    .line 657
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->val$preview:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    .line 665
    :goto_21
    return-void

    .line 661
    :cond_22
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    invoke-static {v0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->access$3(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;)Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v0

    iget-object v1, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    monitor-enter v1

    .line 662
    :try_start_2b
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    invoke-static {v0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->access$3(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;)Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$1;->val$preview:Landroid/graphics/Bitmap;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 661
    monitor-exit v1

    goto :goto_21

    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3a

    throw v0
.end method
