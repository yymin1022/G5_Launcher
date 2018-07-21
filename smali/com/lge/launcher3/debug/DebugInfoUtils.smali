.class public Lcom/lge/launcher3/debug/DebugInfoUtils;
.super Ljava/lang/Object;
.source "DebugInfoUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentPage(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    .prologue
    .line 137
    invoke-static {p0}, Lcom/lge/launcher3/debug/DebugInfoUtils;->getParent(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 138
    if-nez v0, :cond_8

    .line 139
    const/4 v0, -0x1

    .line 141
    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    goto :goto_7
.end method

.method public static getCurrentPage(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I
    .registers 2

    .prologue
    .line 125
    invoke-static {p0}, Lcom/lge/launcher3/debug/DebugInfoUtils;->getGrandParent(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 126
    if-nez v0, :cond_8

    .line 127
    const/4 v0, -0x1

    .line 129
    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    goto :goto_7
.end method

.method public static getGrandParent(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Lcom/android/launcher3/Workspace;
    .registers 2

    .prologue
    .line 52
    invoke-static {p0}, Lcom/lge/launcher3/debug/DebugInfoUtils;->getParent(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/debug/DebugInfoUtils;->getParent(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/Workspace;

    move-result-object v0

    return-object v0
.end method

.method public static getParent(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Lcom/android/launcher3/CellLayout;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 22
    if-nez p0, :cond_5

    move-object v0, v1

    .line 29
    :goto_4
    return-object v0

    .line 25
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_f

    instance-of v2, v0, Lcom/android/launcher3/CellLayout;

    if-nez v2, :cond_11

    :cond_f
    move-object v0, v1

    .line 27
    goto :goto_4

    .line 29
    :cond_11
    check-cast v0, Lcom/android/launcher3/CellLayout;

    goto :goto_4
.end method

.method public static getParent(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/Workspace;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 37
    if-nez p0, :cond_5

    move-object v0, v1

    .line 44
    :goto_4
    return-object v0

    .line 40
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_f

    instance-of v2, v0, Lcom/android/launcher3/Workspace;

    if-nez v2, :cond_11

    :cond_f
    move-object v0, v1

    .line 42
    goto :goto_4

    .line 44
    :cond_11
    check-cast v0, Lcom/android/launcher3/Workspace;

    goto :goto_4
.end method

.method public static getScrollX(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    .prologue
    .line 113
    invoke-static {p0}, Lcom/lge/launcher3/debug/DebugInfoUtils;->getParent(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 114
    if-nez v0, :cond_8

    .line 115
    const/4 v0, -0x1

    .line 117
    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v0

    goto :goto_7
.end method

.method public static getScrollX(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I
    .registers 2

    .prologue
    .line 101
    invoke-static {p0}, Lcom/lge/launcher3/debug/DebugInfoUtils;->getGrandParent(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 102
    if-nez v0, :cond_8

    .line 103
    const/4 v0, -0x1

    .line 105
    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v0

    goto :goto_7
.end method

.method public static getViewVisibleInfo(Landroid/view/View;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 84
    if-nez p0, :cond_4

    .line 85
    const/4 v0, 0x0

    .line 92
    :goto_3
    return-object v0

    .line 88
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    .line 92
    const-string v4, "%s {getLayerType(%d), getVisibility(%d), alpha(%.2f)}"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v0

    .line 92
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static indexOfChild(Lcom/android/launcher3/CellLayout;)I
    .registers 2

    .prologue
    .line 60
    invoke-static {p0}, Lcom/lge/launcher3/debug/DebugInfoUtils;->getParent(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 61
    if-nez v0, :cond_8

    .line 62
    const/4 v0, -0x1

    .line 64
    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_7
.end method

.method public static indexOfChild(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I
    .registers 2

    .prologue
    .line 72
    invoke-static {p0}, Lcom/lge/launcher3/debug/DebugInfoUtils;->getParent(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 73
    if-nez v0, :cond_8

    .line 74
    const/4 v0, -0x1

    .line 76
    :goto_7
    return v0

    :cond_8
    invoke-static {v0}, Lcom/lge/launcher3/debug/DebugInfoUtils;->indexOfChild(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    goto :goto_7
.end method
