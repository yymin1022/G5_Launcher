.class public Lcom/lge/launcher3/util/PaintUtils;
.super Ljava/lang/Object;
.source "PaintUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStrokePaint(IFILandroid/graphics/Paint;)Landroid/graphics/Paint;
    .registers 5

    .prologue
    .line 20
    if-eqz p3, :cond_15

    .line 21
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 24
    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 26
    return-object p3

    .line 20
    :cond_15
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    goto :goto_2
.end method
