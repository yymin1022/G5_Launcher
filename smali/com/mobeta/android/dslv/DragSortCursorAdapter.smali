.class public abstract Lcom/mobeta/android/dslv/DragSortCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "DragSortCursorAdapter.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DragSortListener;


# static fields
.field public static final REMOVED:I = -0x1


# instance fields
.field private mListMapping:Landroid/util/SparseIntArray;

.field private mRemovedCursorPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 35
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 5

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 35
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 5

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 35
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method private cleanMapping()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 174
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    move v1, v0

    .line 175
    :goto_d
    if-lt v1, v3, :cond_17

    .line 181
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    .line 182
    :goto_14
    if-lt v1, v3, :cond_35

    .line 185
    return-void

    .line 176
    :cond_17
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    if-ne v4, v5, :cond_32

    .line 177
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 183
    :cond_35
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 182
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14
.end method

.method private resetMappings()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 84
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .registers 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 71
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->resetMappings()V

    .line 72
    return-void
.end method

.method public drag(II)V
    .registers 3

    .prologue
    .line 166
    return-void
.end method

.method public drop(II)V
    .registers 8

    .prologue
    .line 116
    if-eq p1, p2, :cond_17

    .line 117
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 119
    if-le p1, p2, :cond_3b

    .line 120
    :goto_a
    if-gt p1, p2, :cond_18

    .line 128
    :goto_c
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 130
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->cleanMapping()V

    .line 131
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->notifyDataSetChanged()V

    .line 133
    :cond_17
    return-void

    .line 121
    :cond_18
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    add-int/lit8 v3, p1, -0x1

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 120
    add-int/lit8 p1, p1, -0x1

    goto :goto_a

    .line 125
    :cond_2a
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 124
    add-int/lit8 p1, p1, 0x1

    :cond_3b
    if-lt p1, p2, :cond_2a

    goto :goto_c
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 189
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCursorPosition(I)I
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getCursorPositions()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_d

    .line 216
    return-object v1

    .line 213
    :cond_d
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-super {p0, v0, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-super {p0, v0}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-super {p0, v0}, Landroid/support/v4/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getListPosition(I)I
    .registers 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 229
    const/4 p1, -0x1

    .line 236
    :cond_d
    :goto_d
    return p1

    .line 232
    :cond_e
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    .line 233
    if-ltz v0, :cond_d

    .line 236
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    goto :goto_d
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-super {p0, v0, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)V
    .registers 7

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 146
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_1b
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->getCount()I

    move-result v0

    .line 150
    :goto_1f
    if-lt p1, v0, :cond_2d

    .line 154
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 156
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->cleanMapping()V

    .line 157
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->notifyDataSetChanged()V

    .line 158
    return-void

    .line 151
    :cond_2d
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 150
    add-int/lit8 p1, p1, 0x1

    goto :goto_1f
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->resetMappings()V

    .line 79
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->notifyDataSetChanged()V

    .line 80
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 3

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 59
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortCursorAdapter;->resetMappings()V

    .line 60
    return-object v0
.end method
