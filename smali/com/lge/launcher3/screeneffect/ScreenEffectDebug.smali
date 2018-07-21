.class public Lcom/lge/launcher3/screeneffect/ScreenEffectDebug;
.super Ljava/lang/Object;
.source "ScreenEffectDebug.java"


# static fields
.field public static final PAINT:Landroid/graphics/Paint;

.field public static final SHOW_CHILD_BOUNDS:Z

.field public static final SHOW_CLIP_CHILD_RECTS:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectDebug;->PAINT:Landroid/graphics/Paint;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final drawChildBounds(Landroid/graphics/Canvas;Landroid/view/View;II)V
    .registers 11

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int v3, v0, v1

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int v4, v2, v1

    .line 37
    int-to-float v1, p3

    const/16 v5, 0xff

    sget-object v6, Lcom/lge/launcher3/screeneffect/ScreenEffectDebug;->PAINT:Landroid/graphics/Paint;

    invoke-static {p2, v1, v5, v6}, Lcom/lge/launcher3/util/PaintUtils;->getStrokePaint(IFILandroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v5

    .line 38
    int-to-float v1, v0

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v4, v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 39
    return-void
.end method

.method public static final drawText(Landroid/graphics/Canvas;Ljava/lang/String;IIII)V
    .registers 9

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 52
    int-to-float v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 53
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 55
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    add-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    add-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 58
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 60
    return-void
.end method
