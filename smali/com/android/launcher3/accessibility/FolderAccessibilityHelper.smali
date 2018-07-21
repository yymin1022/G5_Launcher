.class public Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;
.super Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;
.source "FolderAccessibilityHelper.java"


# instance fields
.field private final mParent:Lcom/android/launcher3/FolderPagedView;

.field private final mStartPosition:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .registers 4

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;-><init>(Lcom/android/launcher3/CellLayout;)V

    .line 37
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderPagedView;

    iput-object v0, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mParent:Lcom/android/launcher3/FolderPagedView;

    .line 39
    iget-object v0, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mParent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/FolderPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 40
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mStartPosition:I

    .line 41
    return-void
.end method


# virtual methods
.method protected getConfirmationForIconDrop(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0061

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLocationDescriptionForIconDrop(I)Ljava/lang/String;
    .registers 7

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0f005f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mStartPosition:I

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected intersectsValidDropTarget(I)I
    .registers 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mParent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->getAllocatedContentSize()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mStartPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
