.class public Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;
.super Lcom/mobeta/android/dslv/ResourceDragSortCursorAdapter;
.source "SimpleDragSortCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;,
        Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mCursorToStringConverter:Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

.field protected mFrom:[I

.field mOriginalFrom:[Ljava/lang/String;

.field private mStringConversionColumn:I

.field protected mTo:[I

.field private mViewBinder:Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/ResourceDragSortCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    .line 83
    iput-object p5, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    .line 84
    iput-object p4, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 85
    invoke-direct {p0, p3, p4}, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .registers 8

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/mobeta/android/dslv/ResourceDragSortCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    .line 109
    iput-object p5, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    .line 110
    iput-object p4, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 111
    invoke-direct {p0, p3, p4}, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method private findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 330
    if-eqz p1, :cond_21

    .line 332
    array-length v1, p2

    .line 333
    iget-object v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    array-length v0, v0

    if-eq v0, v1, :cond_10

    .line 334
    :cond_c
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    .line 336
    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-lt v0, v1, :cond_14

    .line 342
    :goto_13
    return-void

    .line 337
    :cond_14
    iget-object v2, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    aget-object v3, p2, v0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 340
    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    goto :goto_13
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v4, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mViewBinder:Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;

    .line 141
    iget-object v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    array-length v5, v0

    .line 142
    iget-object v6, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    .line 143
    iget-object v7, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    move v3, v2

    .line 145
    :goto_b
    if-lt v3, v5, :cond_e

    .line 170
    return-void

    .line 146
    :cond_e
    aget v0, v7, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_33

    .line 149
    if-eqz v4, :cond_68

    .line 150
    aget v1, v6, v3

    invoke-interface {v4, v0, p3, v1}, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v1

    .line 153
    :goto_1e
    if-nez v1, :cond_33

    .line 154
    aget v1, v6, v3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    if-nez v1, :cond_2a

    .line 156
    const-string v1, ""

    .line 159
    :cond_2a
    instance-of v8, v0, Landroid/widget/TextView;

    if-eqz v8, :cond_37

    .line 160
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 145
    :cond_33
    :goto_33
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_b

    .line 161
    :cond_37
    instance-of v8, v0, Landroid/widget/ImageView;

    if-eqz v8, :cond_41

    .line 162
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_33

    .line 164
    :cond_41
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " is not a "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    const-string v2, " view that can be bounds by this SimpleCursorAdapter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_68
    move v1, v2

    goto :goto_1e
.end method

.method public changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 5

    .prologue
    .line 365
    iput-object p2, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 366
    iput-object p3, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    .line 370
    iget-object v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 371
    invoke-super {p0, p1}, Lcom/mobeta/android/dslv/ResourceDragSortCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 372
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    if-eqz v0, :cond_b

    .line 314
    iget-object v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    invoke-interface {v0, p1}, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 319
    :goto_a
    return-object v0

    .line 315
    :cond_b
    iget v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_17

    .line 316
    iget v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 319
    :cond_17
    invoke-super {p0, p1}, Lcom/mobeta/android/dslv/ResourceDragSortCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a
.end method

.method public getCursorToStringConverter()Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    return-object v0
.end method

.method public getStringConversionColumn()I
    .registers 2

    .prologue
    .line 247
    iget v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    return v0
.end method

.method public getViewBinder()Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mViewBinder:Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;

    return-object v0
.end method

.method public setCursorToStringConverter(Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;)V
    .registers 2

    .prologue
    .line 297
    iput-object p1, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    .line 298
    return-void
.end method

.method public setStringConversionColumn(I)V
    .registers 2

    .prologue
    .line 265
    iput p1, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    .line 266
    return-void
.end method

.method public setViewBinder(Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;)V
    .registers 2

    .prologue
    .line 194
    iput-object p1, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mViewBinder:Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter$ViewBinder;

    .line 195
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 214
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_8

    .line 218
    :goto_7
    return-void

    .line 215
    :catch_8
    move-exception v0

    .line 216
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_7
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 232
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/mobeta/android/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 350
    invoke-super {p0, p1}, Lcom/mobeta/android/dslv/ResourceDragSortCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
