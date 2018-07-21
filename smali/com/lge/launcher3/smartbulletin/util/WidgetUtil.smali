.class public Lcom/lge/launcher3/smartbulletin/util/WidgetUtil;
.super Ljava/lang/Object;
.source "WidgetUtil.java"


# static fields
.field private static sCellHeight:I

.field private static sCellWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, -0x1

    .line 11
    sput v0, Lcom/lge/launcher3/smartbulletin/util/WidgetUtil;->sCellHeight:I

    .line 12
    sput v0, Lcom/lge/launcher3/smartbulletin/util/WidgetUtil;->sCellWidth:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateCellSize(Landroid/content/Context;I)I
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 29
    sget v0, Lcom/lge/launcher3/smartbulletin/util/WidgetUtil;->sCellWidth:I

    if-ne v0, v2, :cond_12

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 31
    const v1, 0x7f090015

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/lge/launcher3/smartbulletin/util/WidgetUtil;->sCellWidth:I

    .line 33
    :cond_12
    sget v0, Lcom/lge/launcher3/smartbulletin/util/WidgetUtil;->sCellHeight:I

    if-ne v0, v2, :cond_23

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 34
    sput v0, Lcom/lge/launcher3/smartbulletin/util/WidgetUtil;->sCellHeight:I

    .line 37
    :cond_23
    sget v0, Lcom/lge/launcher3/smartbulletin/util/WidgetUtil;->sCellWidth:I

    sget v1, Lcom/lge/launcher3/smartbulletin/util/WidgetUtil;->sCellHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 38
    int-to-float v1, p1

    int-to-float v0, v0

    div-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 40
    return v0
.end method

.method public static getCalculateWidgetCellWidthCount(Landroid/content/Context;I)I
    .registers 3

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/lge/launcher3/smartbulletin/util/WidgetUtil;->calculateCellSize(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getCalculateWidgetHeight(Landroid/content/Context;I)I
    .registers 4

    .prologue
    .line 15
    sget v0, Lcom/lge/launcher3/smartbulletin/util/WidgetUtil;->sCellHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 17
    const v1, 0x7f090014

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/lge/launcher3/smartbulletin/util/WidgetUtil;->sCellHeight:I

    .line 19
    :cond_12
    sget v0, Lcom/lge/launcher3/smartbulletin/util/WidgetUtil;->sCellHeight:I

    div-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 20
    sget v1, Lcom/lge/launcher3/smartbulletin/util/WidgetUtil;->sCellHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public static getDensity(Landroid/content/Context;)F
    .registers 2

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_d

    .line 46
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 47
    iget v0, v0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    .line 49
    :goto_c
    return v0

    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_c
.end method
