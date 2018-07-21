.class public Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;
.super Ljava/lang/Object;
.source "FocusHelper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/FocusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PagedFolderKeyEventListener"
.end annotation


# instance fields
.field private final mFolder:Lcom/android/launcher3/Folder;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Folder;)V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;->mFolder:Lcom/android/launcher3/Folder;

    .line 63
    return-void
.end method


# virtual methods
.method public handleNoopKey(ILandroid/view/View;)V
    .registers 4

    .prologue
    .line 170
    const/16 v0, 0x14

    if-ne p1, v0, :cond_f

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;->mFolder:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mFolderName:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderEditText;->requestFocus()Z

    .line 172
    invoke-static {p1, p2}, Lcom/android/launcher3/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    .line 176
    :cond_e
    :goto_e
    return-void

    .line 173
    :cond_f
    const/16 v0, 0x13

    if-ne p1, v0, :cond_e

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;->mFolder:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mFolderPlusButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_e
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 16

    .prologue
    .line 67
    invoke-static {p2}, Lcom/android/launcher3/util/FocusLogic;->shouldConsume(I)Z

    move-result v11

    .line 68
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    move v0, v11

    .line 166
    :goto_c
    return v0

    .line 77
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-nez v0, :cond_25

    .line 78
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parent of the focused item is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_23
    const/4 v0, 0x0

    goto :goto_c

    .line 86
    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 87
    invoke-virtual {v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/launcher3/CellLayout;

    .line 88
    invoke-virtual {v9}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    .line 89
    invoke-virtual {v9}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v2

    .line 91
    invoke-virtual {v8, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 92
    invoke-virtual {v9}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/launcher3/FolderPagedView;

    .line 94
    invoke-virtual {v10, v9}, Lcom/android/launcher3/FolderPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 95
    invoke-virtual {v10}, Lcom/android/launcher3/FolderPagedView;->getPageCount()I

    move-result v6

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v7

    .line 98
    invoke-static {v9}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/android/launcher3/CellLayout;)[[I

    move-result-object v3

    move v0, p2

    .line 100
    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/util/FocusLogic;->handleKeyEvent(III[[IIIIZ)I

    move-result v3

    .line 102
    const/4 v0, -0x1

    if-ne v3, v0, :cond_67

    .line 103
    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;->handleNoopKey(ILandroid/view/View;)V

    move v0, v11

    .line 104
    goto :goto_c

    .line 107
    :cond_67
    const/4 v0, 0x0

    .line 109
    packed-switch v3, :pswitch_data_108

    .line 157
    invoke-virtual {v8, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 160
    :cond_6f
    :goto_6f
    if-eqz v0, :cond_103

    .line 161
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 162
    invoke-static {p2, p1}, Lcom/android/launcher3/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    :goto_77
    move v0, v11

    .line 166
    goto :goto_c

    .line 112
    :pswitch_79
    add-int/lit8 v2, v5, -0x1

    invoke-static {v10, v2}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 113
    if-eqz v2, :cond_6f

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 115
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v10, v0}, Lcom/android/launcher3/FolderPagedView;->snapToPage(I)V

    .line 117
    const/4 v0, -0x5

    if-ne v3, v0, :cond_9f

    const/4 v0, 0x1

    .line 118
    :goto_92
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v3

    xor-int/2addr v0, v3

    if-eqz v0, :cond_a1

    const/4 v0, 0x0

    .line 116
    :goto_9a
    invoke-virtual {v2, v0, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    goto :goto_6f

    .line 117
    :cond_9f
    const/4 v0, 0x0

    goto :goto_92

    .line 118
    :cond_a1
    add-int/lit8 v0, v1, -0x1

    goto :goto_9a

    .line 122
    :pswitch_a4
    add-int/lit8 v1, v5, -0x1

    invoke-static {v10, v1}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_6f

    .line 124
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v10, v0}, Lcom/android/launcher3/FolderPagedView;->snapToPage(I)V

    .line 125
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    goto :goto_6f

    .line 129
    :pswitch_b8
    add-int/lit8 v3, v5, -0x1

    invoke-static {v10, v3}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    .line 130
    if-eqz v3, :cond_6f

    .line 131
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v10, v0}, Lcom/android/launcher3/FolderPagedView;->snapToPage(I)V

    .line 132
    add-int/lit8 v0, v1, -0x1

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    goto :goto_6f

    .line 136
    :pswitch_ce
    add-int/lit8 v1, v5, 0x1

    invoke-static {v10, v1}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_6f

    .line 138
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v10, v0}, Lcom/android/launcher3/FolderPagedView;->snapToPage(I)V

    .line 139
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    goto :goto_6f

    .line 144
    :pswitch_e2
    add-int/lit8 v1, v5, 0x1

    invoke-static {v10, v1}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_6f

    .line 146
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v10, v0}, Lcom/android/launcher3/FolderPagedView;->snapToPage(I)V

    .line 147
    invoke-static {v1, p1, v3}, Lcom/android/launcher3/util/FocusLogic;->getAdjacentChildInNextPage(Lcom/android/launcher3/ShortcutAndWidgetContainer;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_6f

    .line 151
    :pswitch_f5
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_6f

    .line 154
    :pswitch_fd
    invoke-virtual {v10}, Lcom/android/launcher3/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v0

    goto/16 :goto_6f

    .line 164
    :cond_103
    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;->handleNoopKey(ILandroid/view/View;)V

    goto/16 :goto_77

    .line 109
    :pswitch_data_108
    .packed-switch -0xa
        :pswitch_e2
        :pswitch_e2
        :pswitch_ce
        :pswitch_fd
        :pswitch_f5
        :pswitch_79
        :pswitch_b8
        :pswitch_a4
        :pswitch_79
    .end packed-switch
.end method
