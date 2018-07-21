.class public Lcom/android/launcher3/widget/WidgetHostViewLoader;
.super Ljava/lang/Object;
.source "WidgetHostViewLoader.java"

# interfaces
.implements Lcom/android/launcher3/DragController$DragListener;


# instance fields
.field private mBindWidgetRunnable:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field mInflateWidgetRunnable:Ljava/lang/Runnable;

.field final mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

.field mLauncher:Lcom/android/launcher3/Launcher;

.field final mView:Landroid/view/View;

.field mWidgetLoadingId:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    .line 25
    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    .line 39
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mView:Landroid/view/View;

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 43
    return-void
.end method

.method public static getDefaultOptionsForWidget(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 133
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 134
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_59

    .line 135
    iget v2, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    iget v3, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    invoke-static {p0, v2, v3, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->getWidgetSizeRanges(Lcom/android/launcher3/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 137
    iget-object v2, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 136
    invoke-static {p0, v2, v0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 140
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v3, v3

    .line 141
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v2, v0

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 144
    const-string v4, "appWidgetMinWidth"

    .line 145
    iget v5, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v3

    .line 144
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    const-string v4, "appWidgetMinHeight"

    .line 147
    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v2

    .line 146
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    const-string v4, "appWidgetMaxWidth"

    .line 149
    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int v3, v5, v3

    .line 148
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    const-string v3, "appWidgetMaxHeight"

    .line 151
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 150
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    :cond_59
    return-object v0
.end method


# virtual methods
.method public onDragEnd()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 51
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DragController;->removeDragListener(Lcom/android/launcher3/DragController$DragListener;)V

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 57
    iget v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    if-eq v0, v2, :cond_29

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/LauncherAppWidgetHost;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 59
    iput v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    .line 63
    :cond_29
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_52

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v1, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DragLayer;->removeView(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/LauncherAppWidgetHost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v1, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 68
    :cond_52
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DragSource;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 46
    return-void
.end method

.method public preloadWidget()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v1, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 76
    iget-boolean v2, v1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v2, :cond_a

    .line 128
    :goto_9
    return v0

    .line 79
    :cond_a
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-static {v2, v3}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v2

    .line 82
    iget-object v3, v1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v3, :cond_1b

    .line 83
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iput-object v2, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    goto :goto_9

    .line 87
    :cond_1b
    new-instance v0, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;-><init>(Lcom/android/launcher3/widget/WidgetHostViewLoader;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;-><init>(Lcom/android/launcher3/widget/WidgetHostViewLoader;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    const/4 v0, 0x1

    goto :goto_9
.end method
