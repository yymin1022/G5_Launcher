.class public Lcom/android/launcher3/DragController$DragNDropAspect$1;
.super Landroid/view/View$DragShadowBuilder;
.source "DragNDropAspect.aj"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/DragController;->ajc$interMethod$com_lge_launcher3_dragndrop_DragNDropAspect$com_android_launcher3_DragController$startDragShadow(Lcom/android/launcher3/DragController;Landroid/graphics/Bitmap;Lcom/android/launcher3/DragSource;Ljava/lang/Object;IILcom/android/launcher3/DragView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DragController;

.field private final synthetic val$bitmapSize:Landroid/graphics/Point;

.field private final synthetic val$registrationX:I

.field private final synthetic val$registrationY:I

.field private final synthetic val$scale:F

.field private final synthetic val$transPosition:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/DragController;Landroid/view/View;Landroid/graphics/Point;IIIF)V
    .registers 8

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/DragController$DragNDropAspect$1;->this$0:Lcom/android/launcher3/DragController;

    iput-object p3, p0, Lcom/android/launcher3/DragController$DragNDropAspect$1;->val$bitmapSize:Landroid/graphics/Point;

    iput p4, p0, Lcom/android/launcher3/DragController$DragNDropAspect$1;->val$registrationX:I

    iput p5, p0, Lcom/android/launcher3/DragController$DragNDropAspect$1;->val$transPosition:I

    iput p6, p0, Lcom/android/launcher3/DragController$DragNDropAspect$1;->val$registrationY:I

    iput p7, p0, Lcom/android/launcher3/DragController$DragNDropAspect$1;->val$scale:F

    .line 342
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    .line 353
    iget v0, p0, Lcom/android/launcher3/DragController$DragNDropAspect$1;->val$scale:F

    iget v1, p0, Lcom/android/launcher3/DragController$DragNDropAspect$1;->val$scale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 354
    invoke-virtual {p0}, Lcom/android/launcher3/DragController$DragNDropAspect$1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 355
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 345
    invoke-super {p0, p1, p2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 346
    iget-object v0, p0, Lcom/android/launcher3/DragController$DragNDropAspect$1;->val$bitmapSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/launcher3/DragController$DragNDropAspect$1;->val$bitmapSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 347
    iget v0, p0, Lcom/android/launcher3/DragController$DragNDropAspect$1;->val$registrationX:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/DragController$DragNDropAspect$1;->val$transPosition:I

    add-int/2addr v0, v1

    .line 348
    iget v1, p0, Lcom/android/launcher3/DragController$DragNDropAspect$1;->val$registrationY:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/DragController$DragNDropAspect$1;->val$transPosition:I

    add-int/2addr v1, v2

    .line 347
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 349
    return-void
.end method
