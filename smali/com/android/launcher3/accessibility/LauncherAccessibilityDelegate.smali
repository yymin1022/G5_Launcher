.class public Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "LauncherAccessibilityDelegate.java"

# interfaces
.implements Lcom/android/launcher3/DragController$DragListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;,
        Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;,
        Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;
    }
.end annotation


# static fields
.field private static final ADD_TO_WORKSPACE:I = 0x7f0e0004

.field private static final INFO:I = 0x7f0e0003

.field private static final MOVE:I = 0x7f0e0005

.field private static final MOVE_TO_WORKSPACE:I = 0x7f0e0006

.field private static final REMOVE:I = 0x7f0e0001

.field private static final RESIZE:I = 0x7f0e0009

.field private static final TAG:Ljava/lang/String; = "LauncherAccessibilityDelegate"

.field private static final UNINSTALL:I = 0x7f0e0002


# instance fields
.field private final mActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

.field private mDragSource:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;

.field final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 10

    .prologue
    const v7, 0x7f0e0005

    const v6, 0x7f0e0004

    const v5, 0x7f0e0003

    const v4, 0x7f0e0002

    const v3, 0x7f0e0001

    .line 76
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragSource:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;

    .line 77
    iput-object p1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 80
    const v2, 0x7f0f002e

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 82
    const v2, 0x7f0f0030

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 84
    const v2, 0x7f0f002f

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 86
    const v2, 0x7f0f0059

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 88
    const v2, 0x7f0f005d

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v7, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v1, 0x7f0e0006

    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x7f0e0006

    .line 90
    const v4, 0x7f0f0067

    invoke-virtual {p1, v4}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v1, 0x7f0e0009

    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x7f0e0009

    .line 92
    const v4, 0x7f0f006b

    invoke-virtual {p1, v4}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    return-void
.end method

.method private findSpaceOnWorkspace(Lcom/android/launcher3/ItemInfo;[I)J
    .registers 13

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v6

    .line 411
    invoke-virtual {v6}, Lcom/android/launcher3/Workspace;->getScreenOrder()Ljava/util/ArrayList;

    move-result-object v7

    .line 415
    invoke-virtual {v6}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    .line 416
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 417
    invoke-virtual {v6, v1}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 419
    iget v1, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v4, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-virtual {v0, p2, v1, v4}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v1

    .line 420
    invoke-virtual {v6}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    :goto_2d
    move v8, v1

    move v9, v0

    move-wide v0, v2

    move v2, v8

    move v3, v9

    .line 421
    :goto_32
    if-nez v2, :cond_3a

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_3f

    .line 428
    :cond_3a
    if-eqz v2, :cond_5d

    .line 440
    :cond_3c
    :goto_3c
    return-wide v0

    .line 420
    :cond_3d
    const/4 v0, 0x0

    goto :goto_2d

    .line 422
    :cond_3f
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 423
    invoke-virtual {v6, v3}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 424
    iget v1, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    .line 425
    add-int/lit8 v1, v3, 0x1

    move v2, v0

    move v3, v1

    move-wide v0, v4

    goto :goto_32

    .line 432
    :cond_5d
    invoke-virtual {v6}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreen()Z

    .line 433
    invoke-virtual {v6}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreen()J

    move-result-wide v0

    .line 434
    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 435
    iget v3, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v4, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v2

    .line 437
    if-nez v2, :cond_3c

    .line 438
    const-string v2, "LauncherAccessibilityDelegate"

    const-string v3, "Not enough space on an empty screen"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method private getSupportedResizeActions(Landroid/view/View;Lcom/android/launcher3/LauncherAppWidgetInfo;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher3/LauncherAppWidgetInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    .line 230
    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 231
    if-nez v2, :cond_11

    move-object v0, v1

    .line 261
    :goto_10
    return-object v0

    .line 235
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/CellLayout;

    if-nez v0, :cond_1f

    move-object v0, v1

    .line 236
    goto :goto_10

    .line 239
    :cond_1f
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 240
    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6a

    .line 241
    iget v3, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    add-int/2addr v3, v4

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    iget v5, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v0, v3, v4, v6, v5}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 242
    iget v3, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    iget v5, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v0, v3, v4, v6, v5}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 243
    :cond_4c
    const v3, 0x7f0f006c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_56
    iget v3, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    if-le v3, v4, :cond_6a

    iget v3, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    if-le v3, v6, :cond_6a

    .line 247
    const v3, 0x7f0f006e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_6a
    iget v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_ab

    .line 252
    iget v2, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    iget v3, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    add-int/2addr v3, v4

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v0, v2, v3, v4, v6}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v2

    if-nez v2, :cond_8d

    .line 253
    iget v2, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    iget v3, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v0, v2, v3, v4, v6}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 254
    :cond_8d
    const v0, 0x7f0f006d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_97
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    iget v2, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    if-le v0, v2, :cond_ab

    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    if-le v0, v6, :cond_ab

    .line 258
    const v0, 0x7f0f006f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ab
    move-object v0, v1

    .line 261
    goto/16 :goto_10
.end method


# virtual methods
.method announceConfirmation(I)V
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method announceConfirmation(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/DragLayer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 310
    return-void
.end method

.method public beginAccessibleDrag(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 347
    new-instance v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    invoke-direct {v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    .line 348
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    iput-object p2, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->info:Lcom/android/launcher3/ItemInfo;

    .line 349
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    iput-object p1, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    .line 350
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    sget-object v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->ICON:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    iput-object v1, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    .line 351
    instance-of v0, p2, Lcom/android/launcher3/FolderInfo;

    if-eqz v0, :cond_82

    .line 352
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    sget-object v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->FOLDER:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    iput-object v1, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    .line 357
    :cond_20
    :goto_20
    new-instance v0, Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/CellLayout$CellInfo;-><init>(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 359
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 360
    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/launcher3/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 361
    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/DragController;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/DragController;->prepareAccessibleDrag(II)V

    .line 363
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    .line 365
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v2

    .line 366
    if-eqz v2, :cond_5c

    .line 367
    invoke-virtual {v2}, Lcom/android/launcher3/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 368
    iput-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragSource:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;

    .line 373
    :cond_5c
    :goto_5c
    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragSource:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;

    if-nez v2, :cond_62

    .line 374
    iput-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragSource:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;

    .line 376
    :cond_62
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragSource:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;

    invoke-interface {v1, v4}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;->enableAccessibleDrag(Z)V

    .line 377
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragSource:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;

    invoke-interface {v1, v0, v4}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;->startDrag(Lcom/android/launcher3/CellLayout$CellInfo;Z)V

    .line 379
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 380
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DragController;->addDragListener(Lcom/android/launcher3/DragController$DragListener;)V

    .line 382
    :cond_81
    return-void

    .line 353
    :cond_82
    instance-of v0, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v0, :cond_20

    .line 354
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    sget-object v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->WIDGET:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    iput-object v1, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    goto :goto_20

    .line 370
    :cond_8d
    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v3, 0x0

    new-array v3, v3, [Z

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->closeFolder([Z)V

    goto :goto_5c
.end method

.method public getDragInfo()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    return-object v0
.end method

.method public handleAccessibleDrop(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 327
    invoke-virtual {p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v0

    if-nez v0, :cond_9

    .line 344
    :cond_8
    :goto_8
    return-void

    .line 329
    :cond_9
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 330
    if-nez p2, :cond_3a

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, v2

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, v3

    .line 338
    :goto_1e
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 339
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/DragController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/DragController;->completeAccessibleDrag([I)V

    .line 341
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 342
    invoke-virtual {p0, p3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(Ljava/lang/String;)V

    goto :goto_8

    .line 334
    :cond_3a
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    aput v1, v0, v2

    .line 335
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    aput v1, v0, v3

    goto :goto_1e
.end method

.method public isInAccessibleDrag()Z
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onDragEnd()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 392
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DragController;->removeDragListener(Lcom/android/launcher3/DragController$DragListener;)V

    .line 393
    iput-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    .line 394
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragSource:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;

    if-eqz v0, :cond_18

    .line 395
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragSource:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;->enableAccessibleDrag(Z)V

    .line 396
    iput-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragSource:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;

    .line 398
    :cond_18
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DragSource;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 388
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 9

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    if-nez v0, :cond_c

    .line 127
    :cond_b
    :goto_b
    return-void

    .line 99
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 101
    invoke-static {v0}, Lcom/android/launcher3/DeleteDropTarget;->supportsDrop(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 102
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f0e0001

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 104
    :cond_26
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->supportsDrop(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 106
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f0e0002

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 108
    :cond_3e
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/InfoDropTarget;->supportsDrop(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 109
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f0e0003

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 112
    :cond_56
    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-nez v1, :cond_62

    .line 113
    instance-of v1, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-nez v1, :cond_62

    .line 114
    instance-of v1, v0, Lcom/android/launcher3/FolderInfo;

    if-eqz v1, :cond_86

    .line 115
    :cond_62
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f0e0005

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 117
    iget-wide v2, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_9e

    .line 118
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f0e0006

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 124
    :cond_86
    :goto_86
    instance-of v1, v0, Lcom/android/launcher3/AppInfo;

    if-nez v1, :cond_8e

    instance-of v0, v0, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v0, :cond_b

    .line 125
    :cond_8e
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto/16 :goto_b

    .line 119
    :cond_9e
    instance-of v1, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v1, :cond_86

    move-object v1, v0

    .line 120
    check-cast v1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedResizeActions(Landroid/view/View;Lcom/android/launcher3/LauncherAppWidgetInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_86

    .line 121
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f0e0009

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_86
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    if-eqz v0, :cond_16

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/android/launcher3/ItemInfo;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 133
    const/4 v0, 0x1

    .line 135
    :goto_15
    return v0

    :cond_16
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_15
.end method

.method public performAction(Landroid/view/View;Lcom/android/launcher3/ItemInfo;I)Z
    .registers 14

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 139
    const v0, 0x7f0e0001

    if-ne p3, v0, :cond_18

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, p2, p1}, Lcom/android/launcher3/DeleteDropTarget;->removeWorkspaceOrFolderItem(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 141
    const v0, 0x7f0f005c

    invoke-virtual {p0, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(I)V

    move v8, v7

    .line 224
    :cond_17
    :goto_17
    return v8

    .line 145
    :cond_18
    const v0, 0x7f0e0003

    if-ne p3, v0, :cond_24

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p2, v0}, Lcom/android/launcher3/InfoDropTarget;->startDetailsActivityForInfo(Ljava/lang/Object;Lcom/android/launcher3/Launcher;)V

    move v8, v7

    .line 147
    goto :goto_17

    .line 148
    :cond_24
    const v0, 0x7f0e0002

    if-ne p3, v0, :cond_30

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, p2}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->startUninstallActivity(Lcom/android/launcher3/Launcher;Ljava/lang/Object;)Z

    move-result v8

    goto :goto_17

    .line 151
    :cond_30
    const v0, 0x7f0e0005

    if-ne p3, v0, :cond_39

    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->beginAccessibleDrag(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    goto :goto_17

    .line 153
    :cond_39
    const v0, 0x7f0e0004

    if-ne p3, v0, :cond_52

    .line 154
    new-array v6, v3, [I

    .line 155
    invoke-direct {p0, p2, v6}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->findSpaceOnWorkspace(Lcom/android/launcher3/ItemInfo;[I)J

    move-result-wide v4

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/ItemInfo;J[I)V

    invoke-virtual {v0, v7, v1}, Lcom/android/launcher3/Launcher;->showWorkspace(ZLjava/lang/Runnable;)V

    move v8, v7

    .line 179
    goto :goto_17

    .line 180
    :cond_52
    const v0, 0x7f0e0006

    if-ne p3, v0, :cond_91

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getOpenFolder()Lcom/android/launcher3/Folder;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    new-array v2, v8, [Z

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/Launcher;->closeFolder(Lcom/android/launcher3/Folder;[Z)V

    move-object v1, p2

    .line 183
    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 184
    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->getInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderInfo;->remove(Lcom/android/launcher3/ShortcutInfo;)V

    .line 186
    new-array v9, v3, [I

    .line 187
    invoke-direct {p0, p2, v9}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->findSpaceOnWorkspace(Lcom/android/launcher3/ItemInfo;[I)J

    move-result-wide v4

    .line 188
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 189
    const-wide/16 v2, -0x64

    .line 190
    aget v6, v9, v8

    aget v7, v9, v7

    .line 188
    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$2;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$2;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/ItemInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    .line 204
    :cond_91
    const v0, 0x7f0e0009

    if-ne p3, v0, :cond_17

    .line 205
    check-cast p2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedResizeActions(Landroid/view/View;Lcom/android/launcher3/LauncherAppWidgetInfo;)Ljava/util/ArrayList;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/CharSequence;

    move v1, v8

    .line 208
    :goto_a3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_c5

    .line 212
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    const v1, 0x7f0f006b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 214
    new-instance v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Ljava/util/ArrayList;Landroid/view/View;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_17

    .line 209
    :cond_c5
    iget-object v4, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v1

    .line 208
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a3
.end method

.method performResizeAction(ILandroid/view/View;Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .registers 11

    .prologue
    const/4 v6, 0x1

    .line 265
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 266
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 267
    invoke-virtual {v1, p2}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 269
    const v2, 0x7f0f006c

    if-ne p1, v2, :cond_9d

    .line 270
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v6, :cond_2d

    .line 271
    iget v2, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    iget v4, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v1, v2, v3, v6, v4}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 272
    :cond_2d
    iget v2, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    iget v3, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    add-int/2addr v2, v3

    iget v3, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    iget v4, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v1, v2, v3, v6, v4}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v2

    if-nez v2, :cond_48

    .line 273
    :cond_3c
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 274
    iget v2, p3, Lcom/android/launcher3/ItemInfo;->cellX:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    .line 276
    :cond_48
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 277
    iget v0, p3, Lcom/android/launcher3/ItemInfo;->spanX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    .line 293
    :cond_54
    :goto_54
    invoke-virtual {v1, p2}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 294
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 295
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v1, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    iget v2, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v0, v1, v2, v5}, Lcom/android/launcher3/AppWidgetResizeFrame;->getWidgetSizeRanges(Lcom/android/launcher3/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-object v0, p2

    .line 296
    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    const/4 v1, 0x0

    .line 297
    iget v2, v5, Landroid/graphics/Rect;->left:I

    iget v3, v5, Landroid/graphics/Rect;->top:I

    iget v4, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 296
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherAppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    .line 298
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, p3}, Lcom/android/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V

    .line 300
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0f0070

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(Ljava/lang/String;)V

    .line 301
    return-void

    .line 278
    :cond_9d
    const v2, 0x7f0f006e

    if-ne p1, v2, :cond_af

    .line 279
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 280
    iget v0, p3, Lcom/android/launcher3/ItemInfo;->spanX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    goto :goto_54

    .line 281
    :cond_af
    const v2, 0x7f0f006d

    if-ne p1, v2, :cond_dd

    .line 282
    iget v2, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    iget v3, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    iget v4, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    add-int/2addr v3, v4

    iget v4, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v2

    if-nez v2, :cond_cf

    .line 283
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 284
    iget v2, p3, Lcom/android/launcher3/ItemInfo;->cellY:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    .line 286
    :cond_cf
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 287
    iget v0, p3, Lcom/android/launcher3/ItemInfo;->spanY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    goto/16 :goto_54

    .line 288
    :cond_dd
    const v2, 0x7f0f006f

    if-ne p1, v2, :cond_54

    .line 289
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 290
    iget v0, p3, Lcom/android/launcher3/ItemInfo;->spanY:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    goto/16 :goto_54
.end method
