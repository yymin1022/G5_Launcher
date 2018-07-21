.class public Lcom/lge/launcher3/util/ViewPosition;
.super Ljava/lang/Object;
.source "ViewPosition.java"


# static fields
.field private static final mTmpXY:[I

.field private static sPt:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 8
    new-array v0, v1, [F

    fill-array-data v0, :array_e

    sput-object v0, Lcom/lge/launcher3/util/ViewPosition;->sPt:[F

    .line 9
    new-array v0, v1, [I

    sput-object v0, Lcom/lge/launcher3/util/ViewPosition;->mTmpXY:[I

    return-void

    .line 8
    nop

    :array_e
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDescendantCoordRelativeToSelf(Landroid/view/View;Landroid/view/View;[I)F
    .registers 13

    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    sget-object v1, Lcom/lge/launcher3/util/ViewPosition;->sPt:[F

    aget v2, p2, v6

    int-to-float v2, v2

    aput v2, v1, v6

    .line 21
    sget-object v1, Lcom/lge/launcher3/util/ViewPosition;->sPt:[F

    aget v2, p2, v7

    int-to-float v2, v2

    aput v2, v1, v7

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    sget-object v2, Lcom/lge/launcher3/util/ViewPosition;->sPt:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    mul-float/2addr v1, v0

    .line 24
    sget-object v0, Lcom/lge/launcher3/util/ViewPosition;->sPt:[F

    aget v2, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v0, v6

    .line 25
    sget-object v0, Lcom/lge/launcher3/util/ViewPosition;->sPt:[F

    aget v2, v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v0, v7

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 27
    :goto_3e
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_44

    if-ne v0, p0, :cond_57

    .line 35
    :cond_44
    sget-object v0, Lcom/lge/launcher3/util/ViewPosition;->sPt:[F

    aget v0, v0, v6

    float-to-double v2, v0

    add-double/2addr v2, v8

    double-to-int v0, v2

    aput v0, p2, v6

    .line 36
    sget-object v0, Lcom/lge/launcher3/util/ViewPosition;->sPt:[F

    aget v0, v0, v7

    float-to-double v2, v0

    add-double/2addr v2, v8

    double-to-int v0, v2

    aput v0, p2, v7

    .line 37
    return v1

    .line 28
    :cond_57
    check-cast v0, Landroid/view/View;

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    sget-object v3, Lcom/lge/launcher3/util/ViewPosition;->sPt:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    .line 31
    sget-object v2, Lcom/lge/launcher3/util/ViewPosition;->sPt:[F

    aget v3, v2, v6

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v2, v6

    .line 32
    sget-object v2, Lcom/lge/launcher3/util/ViewPosition;->sPt:[F

    aget v3, v2, v7

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v2, v7

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_3e
.end method

.method public static getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)F
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    sget-object v0, Lcom/lge/launcher3/util/ViewPosition;->mTmpXY:[I

    aput v4, v0, v4

    .line 49
    sget-object v0, Lcom/lge/launcher3/util/ViewPosition;->mTmpXY:[I

    aput v4, v0, v5

    .line 50
    sget-object v0, Lcom/lge/launcher3/util/ViewPosition;->mTmpXY:[I

    invoke-static {p0, p1, v0}, Lcom/lge/launcher3/util/ViewPosition;->getDescendantCoordRelativeToSelf(Landroid/view/View;Landroid/view/View;[I)F

    move-result v0

    .line 51
    sget-object v1, Lcom/lge/launcher3/util/ViewPosition;->mTmpXY:[I

    aget v1, v1, v4

    sget-object v2, Lcom/lge/launcher3/util/ViewPosition;->mTmpXY:[I

    aget v2, v2, v5

    sget-object v3, Lcom/lge/launcher3/util/ViewPosition;->mTmpXY:[I

    aget v3, v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 52
    sget-object v4, Lcom/lge/launcher3/util/ViewPosition;->mTmpXY:[I

    aget v4, v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 51
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 53
    return v0
.end method

.method public static getLocationInDragLayer(Landroid/view/View;Landroid/view/View;[I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 12
    aput v1, p2, v1

    .line 13
    const/4 v0, 0x1

    aput v1, p2, v0

    .line 14
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/util/ViewPosition;->getDescendantCoordRelativeToSelf(Landroid/view/View;Landroid/view/View;[I)F

    .line 15
    return-void
.end method

.method public static getViewRectRelativeToSelf(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 58
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 59
    aget v1, v0, v3

    .line 60
    aget v2, v0, v4

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 63
    aget v3, v0, v3

    .line 64
    aget v0, v0, v4

    .line 66
    sub-int v1, v3, v1

    .line 67
    sub-int/2addr v0, v2

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 69
    return-void
.end method
