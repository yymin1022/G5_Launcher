.class public Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;
.super Ljava/lang/Object;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreviewItemDrawingParams"
.end annotation


# instance fields
.field drawable:Landroid/graphics/drawable/Drawable;

.field overlayAlpha:I

.field scale:F

.field final synthetic this$0:Lcom/android/launcher3/FolderIcon;

.field transX:F

.field transY:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/FolderIcon;FFFI)V
    .registers 6

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->this$0:Lcom/android/launcher3/FolderIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput p2, p0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 533
    iput p3, p0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 534
    iput p4, p0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 535
    iput p5, p0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    .line 536
    return-void
.end method

.method public static ajc$get$overlayAlpha(Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    return v0
.end method

.method public static ajc$get$scale(Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;)F
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    return v0
.end method

.method public static ajc$get$transX(Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;)F
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    return v0
.end method

.method public static ajc$get$transY(Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;)F
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    return v0
.end method

.method public static ajc$set$overlayAlpha(Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    return-void
.end method

.method public static ajc$set$scale(Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;F)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    return-void
.end method

.method public static ajc$set$transX(Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;F)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    return-void
.end method

.method public static ajc$set$transY(Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;F)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    return-void
.end method
