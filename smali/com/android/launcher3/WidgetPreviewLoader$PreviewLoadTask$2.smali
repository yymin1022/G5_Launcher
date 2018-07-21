.class Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$2;
.super Ljava/lang/Object;
.source "WidgetPreviewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->onCancelled(Landroid/graphics/Bitmap;)V
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
    iput-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$2;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iput-object p2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$2;->val$preview:Landroid/graphics/Bitmap;

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$2;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    invoke-static {v0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->access$3(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;)Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v0

    iget-object v1, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    monitor-enter v1

    .line 684
    :try_start_9
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$2;->this$1:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    invoke-static {v0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->access$3(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;)Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask$2;->val$preview:Landroid/graphics/Bitmap;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 683
    monitor-exit v1

    .line 686
    return-void

    .line 683
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_18

    throw v0
.end method
