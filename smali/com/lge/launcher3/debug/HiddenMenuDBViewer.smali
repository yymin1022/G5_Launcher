.class public Lcom/lge/launcher3/debug/HiddenMenuDBViewer;
.super Landroid/app/Fragment;
.source "HiddenMenuDBViewer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;,
        Lcom/lge/launcher3/debug/HiddenMenuDBViewer$MyDatabaseHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final DISPALY_TABLE_COUNT:I = 0x14


# instance fields
.field mCursor:Landroid/database/Cursor;

.field mDbm:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$MyDatabaseHelper;

.field mHsv:Landroid/widget/HorizontalScrollView;

.field mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

.field mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mMainLayout:Landroid/widget/LinearLayout;

.field mMainscrollview:Landroid/widget/ScrollView;

.field mNext:Landroid/widget/Button;

.field mPrevious:Landroid/widget/Button;

.field mSelectTable:Landroid/widget/Spinner;

.field mTableLayout:Landroid/widget/TableLayout;

.field mTableRowParams:Landroid/widget/TableRow$LayoutParams;

.field mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mCursor:Landroid/database/Cursor;

    .line 124
    new-instance v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    invoke-direct {v0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    .line 206
    new-instance v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;-><init>(Lcom/lge/launcher3/debug/HiddenMenuDBViewer;)V

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/debug/HiddenMenuDBViewer;Landroid/database/Cursor;)V
    .registers 2

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->tableChange(Landroid/database/Cursor;)V

    return-void
.end method

.method private setListener(Landroid/database/Cursor;)V
    .registers 4

    .prologue
    .line 454
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mPrevious:Landroid/widget/Button;

    new-instance v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$3;

    invoke-direct {v1, p0, p1}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$3;-><init>(Lcom/lge/launcher3/debug/HiddenMenuDBViewer;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mNext:Landroid/widget/Button;

    new-instance v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$4;

    invoke-direct {v1, p0, p1}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$4;-><init>(Lcom/lge/launcher3/debug/HiddenMenuDBViewer;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    return-void
.end method

.method private tableChange(Landroid/database/Cursor;)V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    move v2, v3

    move v1, v3

    .line 426
    :goto_4
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    if-lt v2, v0, :cond_d

    .line 451
    return-void

    .line 427
    :cond_d
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 429
    if-eqz v1, :cond_63

    .line 430
    invoke-virtual {v0, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    move v4, v5

    .line 431
    :goto_1b
    invoke-virtual {v0}, Landroid/widget/TableRow;->getChildCount()I

    move-result v1

    if-lt v4, v1, :cond_36

    .line 442
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_61

    move v0, v5

    .line 443
    :goto_28
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-nez v1, :cond_69

    .line 444
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move v1, v0

    .line 426
    :goto_32
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 432
    :cond_36
    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 433
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 436
    :try_start_42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_56} :catch_5a

    .line 431
    :goto_56
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1b

    .line 438
    :catch_5a
    move-exception v6

    const-string v6, "unKnown"

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_56

    :cond_61
    move v0, v3

    .line 442
    goto :goto_28

    .line 447
    :cond_63
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->setVisibility(I)V

    goto :goto_32

    :cond_69
    move v1, v0

    goto :goto_32
.end method


# virtual methods
.method public getcolumnnames()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 293
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mDbm:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$MyDatabaseHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PRAGMA table_info("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iget-object v2, v2, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->table_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$MyDatabaseHelper;->getData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 294
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 295
    iget-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iput-boolean v3, v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->isEmpty:Z

    .line 296
    if-eqz v0, :cond_4a

    .line 297
    iget-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iput-boolean v3, v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->isEmpty:Z

    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 300
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 302
    :cond_39
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_39

    .line 304
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iput-object v1, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->emptytablecolumnnames:Ljava/util/ArrayList;

    .line 307
    :cond_4a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    new-instance v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$MyDatabaseHelper;

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$MyDatabaseHelper;-><init>(Lcom/lge/launcher3/debug/HiddenMenuDBViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mDbm:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$MyDatabaseHelper;

    .line 130
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    const v0, 0x7f04000f

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 135
    const v0, 0x7f0e002f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mMainscrollview:Landroid/widget/ScrollView;

    .line 136
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mMainscrollview:Landroid/widget/ScrollView;

    const v2, 0x7f0e0030

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mMainLayout:Landroid/widget/LinearLayout;

    .line 137
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setScrollContainer(Z)V

    .line 139
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mMainscrollview:Landroid/widget/ScrollView;

    const v2, 0x7f0e0031

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mSelectTable:Landroid/widget/Spinner;

    .line 140
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mMainscrollview:Landroid/widget/ScrollView;

    const v2, 0x7f0e0033

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTextView:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mMainscrollview:Landroid/widget/ScrollView;

    const v2, 0x7f0e0037

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mHsv:Landroid/widget/HorizontalScrollView;

    .line 144
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mMainscrollview:Landroid/widget/ScrollView;

    const v2, 0x7f0e0038

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTableLayout:Landroid/widget/TableLayout;

    .line 145
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mHsv:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setScrollbarFadingEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mHsv:Landroid/widget/HorizontalScrollView;

    const/high16 v2, 0x3000000

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setScrollBarStyle(I)V

    .line 151
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mMainscrollview:Landroid/widget/ScrollView;

    const v2, 0x7f0e0035

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mPrevious:Landroid/widget/Button;

    .line 152
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mMainscrollview:Landroid/widget/ScrollView;

    const v2, 0x7f0e0036

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mNext:Landroid/widget/Button;

    .line 153
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTableRowParams:Landroid/widget/TableRow$LayoutParams;

    .line 155
    const-string v0, "SELECT name _id FROM sqlite_master WHERE type =\'table\'"

    .line 156
    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mDbm:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$MyDatabaseHelper;

    invoke-virtual {v2, v0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$MyDatabaseHelper;->getData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 159
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mCursor:Landroid/database/Cursor;

    .line 162
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 164
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 165
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string v2, "Message from sql = "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_d3

    .line 172
    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 173
    const-string v2, "click here"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_c2
    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_c2

    .line 180
    :cond_d3
    new-instance v2, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$2;

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 181
    const v4, 0x1090008

    .line 180
    invoke-direct {v2, p0, v3, v4, v0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$2;-><init>(Lcom/lge/launcher3/debug/HiddenMenuDBViewer;Landroid/content/Context;ILjava/util/List;)V

    .line 194
    const v0, 0x1090009

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 196
    if-eqz v2, :cond_ec

    .line 198
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mSelectTable:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 202
    :cond_ec
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mSelectTable:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 203
    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 496
    return-void
.end method

.method public paginatetable(I)V
    .registers 12

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x0

    .line 383
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iget-object v4, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->maincursor:Landroid/database/Cursor;

    .line 384
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x14

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->numberofpages:I

    .line 385
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    const/4 v2, 0x1

    iput v2, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->currentpage:I

    .line 386
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v1

    .line 392
    :cond_1b
    new-instance v5, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 393
    const/high16 v2, -0x1000000

    invoke-virtual {v5, v2}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 394
    invoke-virtual {v5, v1, v9, v1, v9}, Landroid/widget/TableRow;->setPadding(IIII)V

    move v2, v1

    .line 396
    :goto_2d
    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-lt v2, v3, :cond_4f

    .line 414
    invoke-virtual {v5, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 415
    add-int/lit8 v0, v0, 0x1

    .line 416
    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v2, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 418
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_47

    const/16 v2, 0x14

    .line 390
    if-lt v0, v2, :cond_1b

    .line 420
    :cond_47
    iget-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iput v0, v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->index:I

    .line 421
    invoke-direct {p0, v4}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->setListener(Landroid/database/Cursor;)V

    .line 422
    return-void

    .line 397
    :cond_4f
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 398
    const/4 v3, -0x1

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 399
    iget-object v3, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTableRowParams:Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v7, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 403
    :try_start_6a
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_88

    move-result-object v3

    .line 407
    :goto_6e
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    const-string v3, "#000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 409
    const/4 v3, 0x4

    const/4 v8, 0x3

    invoke-virtual {v7, v1, v1, v3, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 410
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 411
    invoke-virtual {v5, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 405
    :catch_88
    move-exception v3

    const-string v3, ""

    goto :goto_6e
.end method

.method public refreshTable(I)V
    .registers 12

    .prologue
    const/4 v9, 0x3

    const/4 v8, -0x1

    const/high16 v6, -0x1000000

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 310
    const/4 v0, 0x0

    .line 311
    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 312
    if-nez p1, :cond_31

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "select * from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iget-object v2, v2, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->table_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mDbm:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$MyDatabaseHelper;

    invoke-virtual {v2, v0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$MyDatabaseHelper;->getData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 315
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 318
    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iput-object v0, v2, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->maincursor:Landroid/database/Cursor;

    .line 320
    :cond_31
    const/4 v2, 0x1

    if-ne p1, v2, :cond_10b

    .line 321
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iget-object v0, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->maincursor:Landroid/database/Cursor;

    move-object v2, v0

    .line 325
    :goto_39
    if-eqz v2, :cond_bb

    .line 326
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 328
    iget-object v3, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    new-instance v3, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 331
    invoke-virtual {v3, v6}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 332
    invoke-virtual {v3, v1, v5, v1, v5}, Landroid/widget/TableRow;->setPadding(IIII)V

    move v0, v1

    .line 333
    :goto_61
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-lt v0, v4, :cond_77

    .line 345
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 346
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 353
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->paginatetable(I)V

    .line 378
    :goto_76
    return-void

    .line 334
    :cond_77
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 335
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 336
    iget-object v5, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTableRowParams:Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 338
    const/4 v6, 0x4

    invoke-virtual {v5, v1, v1, v6, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 339
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    const-string v6, "#000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 342
    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 356
    :cond_bb
    new-instance v0, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 357
    invoke-virtual {v0, v6}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 358
    invoke-virtual {v0, v1, v5, v1, v5}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 360
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 361
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 362
    iget-object v3, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTableRowParams:Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 365
    const/4 v4, 0x4

    invoke-virtual {v3, v1, v1, v4, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 366
    const-string v1, "   Table   Is   Empty   "

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 368
    const/high16 v1, -0x10000

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 373
    iget-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 375
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTextView:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_76

    :cond_10b
    move-object v2, v0

    goto/16 :goto_39
.end method
