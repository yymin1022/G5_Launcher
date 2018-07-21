.class public Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;
.super Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;
.source "WorkspaceAccessibilityHelper.java"


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;-><init>(Lcom/android/launcher3/CellLayout;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected getConfirmationForIconDrop(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    rem-int v0, p1, v0

    .line 111
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    div-int v1, p1, v1

    .line 112
    iget-object v2, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getDragInfo()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    move-result-object v2

    .line 114
    iget-object v3, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_22

    iget-object v1, v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    if-ne v0, v1, :cond_2c

    .line 116
    :cond_22
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0061

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_2b
    return-object v0

    .line 118
    :cond_2c
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 119
    instance-of v1, v0, Lcom/android/launcher3/AppInfo;

    if-nez v1, :cond_3a

    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_44

    .line 120
    :cond_3a
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 122
    :cond_44
    instance-of v0, v0, Lcom/android/launcher3/FolderInfo;

    if-eqz v0, :cond_52

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0064

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 126
    :cond_52
    const-string v0, ""

    goto :goto_2b
.end method

.method protected getLocationDescriptionForIconDrop(I)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    rem-int v0, p1, v0

    .line 132
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    div-int v1, p1, v1

    .line 133
    iget-object v2, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getDragInfo()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    move-result-object v2

    .line 135
    iget-object v3, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 136
    if-eqz v3, :cond_24

    iget-object v2, v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    if-ne v3, v2, :cond_5d

    .line 137
    :cond_24
    iget-object v2, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->isHotseat()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 138
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0060

    new-array v2, v7, [Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 164
    :goto_3f
    return-object v0

    .line 140
    :cond_40
    iget-object v2, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f0f005e

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 143
    :cond_5d
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 144
    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_77

    .line 145
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0065

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 146
    :cond_77
    instance-of v1, v0, Lcom/android/launcher3/FolderInfo;

    if-eqz v1, :cond_c6

    .line 147
    iget-object v1, v0, Lcom/android/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b5

    move-object v1, v0

    .line 149
    check-cast v1, Lcom/android/launcher3/FolderInfo;

    .line 150
    const/4 v2, 0x0

    .line 151
    iget-object v1, v1, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8d
    :goto_8d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a5

    .line 157
    if-eqz v2, :cond_b5

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0063

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 151
    :cond_a5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 152
    if-eqz v2, :cond_b3

    iget v4, v2, Lcom/android/launcher3/ShortcutInfo;->rank:I

    iget v5, v1, Lcom/android/launcher3/ShortcutInfo;->rank:I

    if-le v4, v5, :cond_8d

    :cond_b3
    move-object v2, v1

    .line 153
    goto :goto_8d

    .line 161
    :cond_b5
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0062

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3f

    .line 164
    :cond_c6
    const-string v0, ""

    goto/16 :goto_3f
.end method

.method protected intersectsValidDropTarget(I)I
    .registers 16

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v7

    .line 46
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v8

    .line 48
    rem-int v9, p1, v7

    .line 49
    div-int v10, p1, v7

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getDragInfo()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    move-result-object v0

    .line 52
    iget-object v1, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    sget-object v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->WIDGET:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    if-ne v1, v2, :cond_26

    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->isHotseat()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 53
    const/4 p1, -0x1

    .line 104
    :cond_25
    :goto_25
    return p1

    .line 56
    :cond_26
    iget-object v1, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    sget-object v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->WIDGET:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    if-ne v1, v2, :cond_77

    .line 63
    iget-object v1, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->info:Lcom/android/launcher3/ItemInfo;

    iget v11, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 64
    iget-object v0, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->info:Lcom/android/launcher3/ItemInfo;

    iget v12, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 66
    const/4 v0, 0x0

    move v6, v0

    :goto_36
    if-lt v6, v11, :cond_3a

    .line 89
    const/4 p1, -0x1

    goto :goto_25

    .line 67
    :cond_3a
    const/4 v0, 0x0

    move v5, v0

    :goto_3c
    if-lt v5, v12, :cond_42

    .line 66
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_36

    .line 69
    :cond_42
    const/4 v0, 0x1

    .line 70
    sub-int v4, v9, v6

    .line 71
    sub-int v2, v10, v5

    .line 73
    if-ltz v4, :cond_4b

    if-gez v2, :cond_4f

    .line 67
    :cond_4b
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3c

    :cond_4f
    move v3, v4

    .line 75
    :goto_50
    add-int v1, v4, v11

    if-lt v3, v1, :cond_5b

    .line 84
    :cond_54
    if-eqz v0, :cond_4b

    .line 85
    mul-int v0, v7, v2

    add-int p1, v4, v0

    goto :goto_25

    .line 76
    :cond_5b
    if-eqz v0, :cond_54

    move v1, v2

    .line 77
    :goto_5e
    add-int v13, v2, v12

    if-lt v1, v13, :cond_66

    .line 75
    :goto_62
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_50

    .line 78
    :cond_66
    if-ge v3, v7, :cond_72

    if-ge v1, v8, :cond_72

    iget-object v13, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v13, v3, v1}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v13

    if-eqz v13, :cond_74

    .line 79
    :cond_72
    const/4 v0, 0x0

    .line 80
    goto :goto_62

    .line 77
    :cond_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 92
    :cond_77
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, v9, v10}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_25

    iget-object v2, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    if-eq v1, v2, :cond_25

    .line 96
    iget-object v0, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    sget-object v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->FOLDER:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    if-eq v0, v2, :cond_9b

    .line 98
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 99
    instance-of v1, v0, Lcom/android/launcher3/AppInfo;

    if-nez v1, :cond_25

    instance-of v1, v0, Lcom/android/launcher3/FolderInfo;

    if-nez v1, :cond_25

    .line 100
    instance-of v0, v0, Lcom/android/launcher3/ShortcutInfo;

    if-nez v0, :cond_25

    .line 104
    :cond_9b
    const/4 p1, -0x1

    goto :goto_25
.end method
