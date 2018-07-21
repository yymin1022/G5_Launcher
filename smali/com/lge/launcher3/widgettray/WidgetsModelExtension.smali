.class public Lcom/lge/launcher3/widgettray/WidgetsModelExtension;
.super Lcom/android/launcher3/model/WidgetsModel;
.source "WidgetsModelExtension.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/IconCache;Lcom/android/launcher3/AppFilter;)V
    .registers 4

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/WidgetsModel;-><init>(Landroid/content/Context;Lcom/android/launcher3/IconCache;Lcom/android/launcher3/AppFilter;)V

    .line 21
    return-void
.end method

.method protected constructor <init>(Lcom/android/launcher3/model/WidgetsModel;)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/WidgetsModel;-><init>(Lcom/android/launcher3/model/WidgetsModel;)V

    .line 25
    return-void
.end method

.method private checkValidSizeWidget(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_7
    if-gez v1, :cond_a

    .line 43
    return-void

    .line 35
    :cond_a
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 36
    instance-of v2, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v2, :cond_25

    .line 37
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 38
    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 37
    invoke-direct {p0, v2, v0}, Lcom/lge/launcher3/widgettray/WidgetsModelExtension;->isValidSizeWidget(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)Z

    move-result v0

    .line 38
    if-nez v0, :cond_25

    .line 39
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 34
    :cond_25
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_7
.end method

.method private isValidSizeWidget(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)Z
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-static {p1, p2, v1}, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v0

    .line 48
    invoke-static {p1, p2, v1}, Lcom/lge/launcher3/dynamicgrid/AppWidgetSizeCalculator;->getMinResizeSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v1

    .line 51
    if-eqz v0, :cond_24

    if-eqz v0, :cond_18

    aget v5, v0, v3

    if-ltz v5, :cond_24

    aget v5, v0, v2

    if-ltz v5, :cond_24

    .line 52
    :cond_18
    if-eqz v1, :cond_24

    .line 53
    if-eqz v1, :cond_26

    aget v5, v1, v3

    if-ltz v5, :cond_24

    aget v5, v1, v2

    if-gez v5, :cond_26

    :cond_24
    move v0, v3

    .line 75
    :goto_25
    return v0

    .line 58
    :cond_26
    aget v5, v0, v3

    aget v6, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 59
    aget v0, v0, v2

    aget v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 61
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    .line 64
    instance-of v0, v1, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;

    if-eqz v0, :cond_8e

    move-object v0, v1

    .line 65
    check-cast v0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;

    iget v5, v0, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numColumns:I

    .line 66
    check-cast v1, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;

    iget v0, v1, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->numRows:I

    move v1, v5

    .line 69
    :goto_4c
    if-eq v1, v4, :cond_56

    if-eq v0, v4, :cond_56

    if-gt v6, v1, :cond_56

    .line 70
    if-gt v7, v0, :cond_56

    move v0, v2

    .line 71
    goto :goto_25

    .line 73
    :cond_56
    const-string v0, "WidgetsModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Widget "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can not fit on this device ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
    iget v2, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [I

    .line 73
    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    move v0, v3

    .line 75
    goto :goto_25

    :cond_8e
    move v0, v4

    move v1, v4

    goto :goto_4c
.end method


# virtual methods
.method public clone()Lcom/android/launcher3/model/WidgetsModel;
    .registers 2

    .prologue
    .line 86
    new-instance v0, Lcom/lge/launcher3/widgettray/WidgetsModelExtension;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/widgettray/WidgetsModelExtension;-><init>(Lcom/android/launcher3/model/WidgetsModel;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/WidgetsModelExtension;->clone()Lcom/android/launcher3/model/WidgetsModel;

    move-result-object v0

    return-object v0
.end method

.method public setWidgetsAndShortcuts(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lge/launcher3/widgettray/WidgetsModelExtension;->checkValidSizeWidget(Ljava/util/ArrayList;)V

    .line 30
    invoke-super {p0, p1}, Lcom/android/launcher3/model/WidgetsModel;->setWidgetsAndShortcuts(Ljava/util/ArrayList;)V

    .line 31
    return-void
.end method
