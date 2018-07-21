.class public Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;
.super Ljava/lang/Object;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/WidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewLoadRequest"
.end annotation


# instance fields
.field final mTask:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

.field final synthetic this$0:Lcom/android/launcher3/WidgetPreviewLoader;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/WidgetPreviewLoader;Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;)V
    .registers 3

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p2, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->mTask:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    .line 551
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;)Lcom/android/launcher3/WidgetPreviewLoader;
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .registers 3

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->mTask:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    if-eqz v0, :cond_a

    .line 555
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->mTask:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->cancel(Z)Z

    .line 563
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->mTask:Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1c

    .line 564
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->this$0:Lcom/android/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest$1;-><init>(Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 574
    :cond_1c
    return-void
.end method
