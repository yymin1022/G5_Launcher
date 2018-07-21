.class public Lcom/android/launcher3/widget/WidgetsContainerView;
.super Lcom/android/launcher3/BaseContainerView;
.source "WidgetsContainerView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher3/DragSource;


# static fields
.field private static final DEBUG:Z = false

.field private static final PRELOAD_SCREEN_HEIGHT_MULTIPLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WidgetsContainerView"


# instance fields
.field private mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

.field protected mContent:Landroid/view/View;

.field private mDragController:Lcom/android/launcher3/DragController;

.field private mIconCache:Lcom/android/launcher3/IconCache;

.field protected mLauncher:Lcom/android/launcher3/Launcher;

.field private mPadding:Landroid/graphics/Rect;

.field private mView:Lcom/android/launcher3/widget/WidgetsRecyclerView;

.field private mWidgetInstructionToast:Landroid/widget/Toast;

.field private mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/WidgetsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mPadding:Landroid/graphics/Rect;

    move-object v0, p1

    .line 90
    check-cast v0, Lcom/android/launcher3/Launcher;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/DragController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mDragController:Lcom/android/launcher3/DragController;

    .line 92
    new-instance v0, Lcom/android/launcher3/widget/WidgetsListAdapter;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, p1, p0, p0, v1}, Lcom/android/launcher3/widget/WidgetsListAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    .line 93
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 97
    return-void
.end method

.method private beginDragging(Landroid/view/View;)Z
    .registers 5

    .prologue
    .line 182
    instance-of v0, p1, Lcom/android/launcher3/widget/WidgetCell;

    if-eqz v0, :cond_e

    .line 183
    check-cast p1, Lcom/android/launcher3/widget/WidgetCell;

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/WidgetsContainerView;->beginDraggingWidget(Lcom/android/launcher3/widget/WidgetCell;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 184
    const/4 v0, 0x0

    .line 196
    :goto_d
    return v0

    .line 187
    :cond_e
    const-string v0, "WidgetsContainerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected dragging view: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_22
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->enterSpringLoadedDragMode()V

    .line 196
    :cond_33
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private beginDraggingWidget(Lcom/android/launcher3/widget/WidgetCell;)Z
    .registers 14

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 201
    const v0, 0x7f0e00f1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/launcher3/widget/WidgetImageView;

    .line 202
    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/launcher3/PendingAddItemInfo;

    .line 206
    invoke-virtual {v8}, Lcom/android/launcher3/widget/WidgetImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 260
    :goto_19
    return v6

    .line 213
    :cond_1a
    invoke-virtual {v8}, Lcom/android/launcher3/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 215
    instance-of v0, v9, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_b8

    move-object v2, v9

    .line 219
    check-cast v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, v2, v10}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/ItemInfo;Z)[I

    move-result-object v0

    .line 222
    invoke-virtual {v8}, Lcom/android/launcher3/widget/WidgetImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 223
    const/high16 v1, 0x3fa00000    # 1.25f

    .line 224
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    aget v0, v0, v6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 226
    new-array v5, v10, [I

    .line 227
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetsContainerView;->getWidgetPreviewLoader()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 228
    iget-object v2, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    const/4 v4, 0x0

    .line 227
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/WidgetPreviewLoader;->generateWidgetPreview(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 230
    aget v0, v5, v6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_81

    .line 232
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    aget v1, v5, v6

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 233
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v8}, Lcom/android/launcher3/widget/WidgetImageView;->getWidth()I

    move-result v3

    if-le v1, v3, :cond_76

    .line 234
    invoke-virtual {v8}, Lcom/android/launcher3/widget/WidgetImageView;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    .line 237
    :cond_76
    iget v1, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, v11, Landroid/graphics/Rect;->left:I

    .line 238
    iget v1, v11, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v0

    iput v0, v11, Landroid/graphics/Rect;->right:I

    .line 240
    :cond_81
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 250
    :goto_8d
    instance-of v0, v9, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_e1

    move-object v0, v9

    .line 251
    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->previewImage:I

    if-nez v0, :cond_e1

    move v0, v6

    .line 254
    :goto_99
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->lockScreenOrientation()V

    .line 255
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1, v9, v2, v0}, Lcom/android/launcher3/Workspace;->onDragStartedWithItem(Lcom/android/launcher3/PendingAddItemInfo;Landroid/graphics/Bitmap;Z)V

    .line 256
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mDragController:Lcom/android/launcher3/DragController;

    .line 257
    sget v6, Lcom/android/launcher3/DragController;->DRAG_ACTION_COPY:I

    move-object v1, v8

    move-object v3, p0

    move-object v4, v9

    move-object v5, v11

    .line 256
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/DragController;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/DragSource;Ljava/lang/Object;Landroid/graphics/Rect;IF)V

    .line 259
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move v6, v10

    .line 260
    goto/16 :goto_19

    .line 242
    :cond_b8
    invoke-virtual {p1}, Lcom/android/launcher3/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    .line 243
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v0, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/IconCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 245
    iput v10, v9, Lcom/android/launcher3/PendingAddItemInfo;->spanY:I

    iput v10, v9, Lcom/android/launcher3/PendingAddItemInfo;->spanX:I

    .line 246
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v7, v0, v1

    goto :goto_8d

    :cond_e1
    move v0, v10

    .line 250
    goto :goto_99
.end method

.method private getWidgetPreviewLoader()Lcom/android/launcher3/WidgetPreviewLoader;
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    if-nez v0, :cond_e

    .line 369
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    .line 371
    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    return-object v0
.end method

.method private static final supportsAppInfoDropTarget_aroundBody0(Lcom/android/launcher3/widget/WidgetsContainerView;)Z
    .registers 2

    .prologue
    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method private static final supportsAppInfoDropTarget_aroundBody1$advice(Lcom/android/launcher3/widget/WidgetsContainerView;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4

    .prologue
    .line 67
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 68
    const/4 v0, 0x0

    .line 70
    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/android/launcher3/widget/WidgetsContainerView;->supportsAppInfoDropTarget_aroundBody0(Lcom/android/launcher3/widget/WidgetsContainerView;)Z

    move-result v0

    goto :goto_7
.end method


# virtual methods
.method public addWidgets(Lcom/android/launcher3/model/WidgetsModel;)V
    .registers 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mView:Lcom/android/launcher3/widget/WidgetsRecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->setWidgets(Lcom/android/launcher3/model/WidgetsModel;)V

    .line 359
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetsListAdapter;->setWidgetsModel(Lcom/android/launcher3/model/WidgetsModel;)V

    .line 360
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetsListAdapter;->notifyDataSetChanged()V

    .line 361
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mView:Lcom/android/launcher3/widget/WidgetsRecyclerView;

    return-object v0
.end method

.method public getIntrinsicIconScaleFactor()F
    .registers 2

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public getRevealView()Landroid/view/View;
    .registers 2

    .prologue
    .line 128
    const v0, 0x7f0e0101

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetsListAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWidgetsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_18

    .line 144
    instance-of v0, p1, Lcom/android/launcher3/widget/WidgetCell;

    if-nez v0, :cond_19

    .line 153
    :cond_18
    :goto_18
    return-void

    .line 147
    :cond_19
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mWidgetInstructionToast:Landroid/widget/Toast;

    if-eqz v0, :cond_22

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mWidgetInstructionToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 150
    :cond_22
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0023

    .line 151
    const/4 v2, 0x0

    .line 150
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mWidgetInstructionToast:Landroid/widget/Toast;

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mWidgetInstructionToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_18
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 302
    if-nez p3, :cond_17

    if-eqz p4, :cond_17

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    if-eq p1, v0, :cond_1e

    .line 303
    instance-of v0, p1, Lcom/android/launcher3/DeleteDropTarget;

    if-nez v0, :cond_1e

    instance-of v0, p1, Lcom/android/launcher3/Folder;

    if-nez v0, :cond_1e

    .line 306
    :cond_17
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 307
    const/16 v1, 0x12c

    .line 306
    invoke-virtual {v0, v3, v1, v5}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 309
    :cond_1e
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 313
    if-nez p4, :cond_54

    .line 315
    instance-of v0, p1, Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_57

    .line 316
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getCurrentWorkspaceScreen()I

    move-result v0

    .line 317
    check-cast p1, Lcom/android/launcher3/Workspace;

    .line 318
    invoke-virtual {p1, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 319
    iget-object v1, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 320
    if-eqz v0, :cond_57

    .line 321
    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->calculateSpans(Lcom/android/launcher3/ItemInfo;)V

    .line 323
    iget v4, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v1, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-virtual {v0, v5, v4, v1}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    if-eqz v0, :cond_55

    move v0, v2

    .line 326
    :goto_4b
    if-eqz v0, :cond_52

    .line 327
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->showOutOfSpaceMessage(Z)V

    .line 329
    :cond_52
    iput-boolean v2, p2, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 331
    :cond_54
    return-void

    :cond_55
    move v0, v3

    .line 323
    goto :goto_4b

    :cond_57
    move v0, v2

    goto :goto_4b
.end method

.method protected onFinishInflate()V
    .registers 6

    .prologue
    .line 101
    const v0, 0x7f0e001a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mContent:Landroid/view/View;

    .line 102
    const v0, 0x7f0e0102

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetsRecyclerView;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mView:Lcom/android/launcher3/widget/WidgetsRecyclerView;

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mView:Lcom/android/launcher3/widget/WidgetsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mView:Lcom/android/launcher3/widget/WidgetsRecyclerView;

    new-instance v1, Lcom/android/launcher3/widget/WidgetsContainerView$1;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/widget/WidgetsContainerView$1;-><init>(Lcom/android/launcher3/widget/WidgetsContainerView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsContainerView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsContainerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsContainerView;->getPaddingRight()I

    move-result v3

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsContainerView;->getPaddingBottom()I

    move-result v4

    .line 114
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 116
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .registers 5

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    .line 295
    const/16 v2, 0x12c

    const/4 v3, 0x0

    .line 294
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 296
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 297
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_8

    .line 178
    :cond_7
    :goto_7
    return v0

    .line 163
    :cond_8
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isWidgetsViewVisible()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 164
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v1

    if-nez v1, :cond_7

    .line 166
    const-string v1, "WidgetsContainerView"

    const-string v2, "onLonglick dragging enabled?."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 169
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/WidgetsContainerView;->beginDragging(Landroid/view/View;)Z

    move-result v0

    .line 170
    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v1, :cond_7

    .line 171
    new-instance v1, Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2, p1}, Lcom/android/launcher3/widget/WidgetHostViewLoader;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    .line 172
    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->preloadWidget()Z

    .line 176
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/DragController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/DragController;->addDragListener(Lcom/android/launcher3/DragController$DragListener;)V

    goto :goto_7
.end method

.method protected onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 341
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mContent:Landroid/view/View;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 344
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    .line 345
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 346
    iget v4, p2, Landroid/graphics/Rect;->right:I

    move v5, v3

    .line 344
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 347
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 348
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 349
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mView:Lcom/android/launcher3/widget/WidgetsRecyclerView;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsContainerView;->getRevealView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 351
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mView:Lcom/android/launcher3/widget/WidgetsRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->updateBackgroundPadding(Landroid/graphics/Rect;)V

    .line 352
    return-void
.end method

.method public scrollToTop()V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mView:Lcom/android/launcher3/widget/WidgetsRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->scrollToPosition(I)V

    .line 133
    return-void
.end method

.method public supportsAppInfoDropTarget()Z
    .registers 3

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->aspectOf()Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/widget/WidgetsContainerView;->supportsAppInfoDropTarget_aroundBody1$advice(Lcom/android/launcher3/widget/WidgetsContainerView;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    return v0
.end method

.method public supportsDeleteDropTarget()Z
    .registers 2

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public supportsFlingToDelete()Z
    .registers 2

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method
