.class public Lcom/lge/launcher3/dynamicgrid/ShapeRectangle;
.super Landroid/view/View;
.source "ShapeRectangle.java"


# instance fields
.field mHeight:I

.field mStrokeWidth:I

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/16 v0, 0xa

    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 13
    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/ShapeRectangle;->mWidth:I

    .line 14
    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/ShapeRectangle;->mHeight:I

    .line 15
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/ShapeRectangle;->mStrokeWidth:I

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/dynamicgrid/ShapeRectangle;->setBackgroundColor(I)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 30
    invoke-virtual {p0}, Lcom/lge/launcher3/dynamicgrid/ShapeRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 31
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget v1, p0, Lcom/lge/launcher3/dynamicgrid/ShapeRectangle;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/lge/launcher3/dynamicgrid/ShapeRectangle;->mWidth:I

    iget v3, p0, Lcom/lge/launcher3/dynamicgrid/ShapeRectangle;->mHeight:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 35
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 36
    return-void
.end method

.method public setSize(II)V
    .registers 3

    .prologue
    .line 23
    iput p1, p0, Lcom/lge/launcher3/dynamicgrid/ShapeRectangle;->mWidth:I

    .line 24
    iput p2, p0, Lcom/lge/launcher3/dynamicgrid/ShapeRectangle;->mHeight:I

    .line 25
    return-void
.end method
