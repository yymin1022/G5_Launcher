.class public Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator;
.super Ljava/lang/Object;
.source "AppWidgetSizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMinResizeSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;[I)[I
    .registers 6

    .prologue
    .line 49
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 50
    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 49
    invoke-static {p0, v0, v1, v2, p2}, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method public static getSpanForWidget(Landroid/content/Context;I[I)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 4

    .prologue
    .line 108
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_d

    .line 110
    invoke-static {p0, v0, p2}, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    .line 112
    :cond_d
    return-object v0
.end method

.method public static getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;[I)[I
    .registers 6

    .prologue
    .line 55
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 56
    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 55
    invoke-static {p0, v0, v1, v2, p2}, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator;->getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method public static getSpanForWidget(Landroid/content/Context;Landroid/content/ComponentName;II[I)[I
    .registers 8

    .prologue
    const/4 v1, -0x1

    .line 62
    if-nez p4, :cond_6

    .line 63
    const/4 v0, 0x2

    new-array p4, v0, [I

    .line 66
    :cond_6
    invoke-static {p0, p1}, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator;->isValidComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 67
    const/4 v0, 0x0

    aput v1, p4, v0

    .line 68
    const/4 v0, 0x1

    aput v1, p4, v0

    .line 79
    :goto_12
    return-object p4

    .line 72
    :cond_13
    new-instance v0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;

    invoke-direct {v0}, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;-><init>()V

    .line 76
    iget v1, v0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;->right:I

    add-int/2addr v1, v2

    .line 77
    iget v2, v0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;->top:I

    add-int/2addr v2, p3

    iget v0, v0, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator$Padding;->bottom:I

    add-int/2addr v0, v2

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1, v0, p4}, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator;->rectToCellForWidget(Landroid/content/res/Resources;II[I)[I

    move-result-object p4

    goto :goto_12
.end method

.method public static isValidComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    .line 102
    :goto_e
    return v0

    .line 86
    :catch_f
    move-exception v2

    .line 88
    invoke-static {p0}, Lcom/lge/launcher3/util/ManagedProfileUtils;->hasProfileOwner(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 90
    :try_start_16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 91
    const/16 v4, 0x2000

    .line 90
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_23} :catch_24

    goto :goto_e

    .line 92
    :catch_24
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 94
    goto :goto_e

    .line 98
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 99
    goto :goto_e
.end method

.method public static rectToCellForWidget(Landroid/content/res/Resources;II[I)[I
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 130
    const v1, 0x7f090014

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 131
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 134
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 135
    int-to-float v2, p2

    int-to-float v0, v0

    div-float v0, v2, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 137
    if-nez p3, :cond_31

    .line 138
    const/4 v2, 0x2

    new-array p3, v2, [I

    aput v1, p3, v4

    aput v0, p3, v5

    .line 142
    :goto_30
    return-object p3

    .line 140
    :cond_31
    aput v1, p3, v4

    .line 141
    aput v0, p3, v5

    goto :goto_30
.end method
