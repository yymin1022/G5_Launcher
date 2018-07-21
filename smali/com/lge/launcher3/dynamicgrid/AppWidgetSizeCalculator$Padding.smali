.class public Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;
.super Ljava/lang/Object;
.source "AppWidgetSizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Padding"
.end annotation


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;->left:I

    .line 27
    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;->right:I

    .line 28
    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;->top:I

    .line 29
    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;->bottom:I

    .line 32
    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;->left:I

    .line 33
    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;->top:I

    .line 34
    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;->right:I

    .line 35
    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;->bottom:I

    .line 36
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;->left:I

    .line 27
    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;->right:I

    .line 28
    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;->top:I

    .line 29
    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;->bottom:I

    .line 40
    iput p1, p0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;->left:I

    .line 41
    iput p2, p0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;->top:I

    .line 42
    iput p3, p0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;->right:I

    .line 43
    iput p4, p0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;->bottom:I

    .line 44
    return-void
.end method
