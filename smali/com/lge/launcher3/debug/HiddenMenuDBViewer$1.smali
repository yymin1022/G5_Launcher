.class Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;
.super Ljava/lang/Object;
.source "HiddenMenuDBViewer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/debug/HiddenMenuDBViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/debug/HiddenMenuDBViewer;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
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
    const/4 v6, 0x2

    const/4 v8, -0x1

    const/high16 v5, -0x1000000

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v0, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mMainscrollview:Landroid/widget/ScrollView;

    const v1, 0x7f0e0032

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 210
    iget-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v1, v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mMainscrollview:Landroid/widget/ScrollView;

    const v3, 0x7f0e0034

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 211
    if-nez p3, :cond_38

    iget-object v3, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v3, v3, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iget-boolean v3, v3, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->isCustomQuery:Z

    if-nez v3, :cond_38

    .line 212
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 213
    iget-object v3, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v3, v3, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mHsv:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 214
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    :cond_38
    if-eqz p3, :cond_e3

    .line 217
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v0, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mHsv:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 219
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v0, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mCursor:Landroid/database/Cursor;

    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 221
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v0, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    add-int/lit8 v1, p3, -0x1

    iput v1, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->cursorpostion:I

    .line 222
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v0, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iget-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v1, v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->table_name:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v0, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 226
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v0, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mDbm:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$MyDatabaseHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "select * from "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v3, v3, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$MyDatabaseHelper;->getData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 227
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 228
    iget-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v1, v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iput-object v0, v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->maincursor:Landroid/database/Cursor;

    .line 230
    if-eqz v0, :cond_12f

    .line 231
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 232
    iget-object v3, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v3, v3, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mInfo:Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;

    iput-boolean v2, v3, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->isEmpty:Z

    .line 233
    iget-object v3, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v3, v3, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    new-instance v3, Landroid/widget/TableRow;

    iget-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    invoke-virtual {v1}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 239
    invoke-virtual {v3, v5}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 240
    invoke-virtual {v3, v2, v6, v2, v6}, Landroid/widget/TableRow;->setPadding(IIII)V

    move v1, v2

    .line 241
    :goto_ca
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-lt v1, v4, :cond_e4

    .line 254
    iget-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v1, v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v1, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 255
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 257
    iget-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->paginatetable(I)V

    .line 284
    :cond_e3
    :goto_e3
    return-void

    .line 242
    :cond_e4
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    invoke-virtual {v5}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 243
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 244
    iget-object v5, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v5, v5, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTableRowParams:Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    invoke-virtual {v6}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 246
    const/4 v6, 0x4

    const/4 v7, 0x3

    invoke-virtual {v5, v2, v2, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    const-string v6, "#000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_ca

    .line 262
    :cond_12f
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v0, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 263
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    invoke-virtual {v0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->getcolumnnames()V

    .line 264
    new-instance v0, Landroid/widget/TableRow;

    iget-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    invoke-virtual {v1}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 265
    invoke-virtual {v0, v5}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 267
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    invoke-virtual {v2}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 268
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 269
    iget-object v2, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v2, v2, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTableRowParams:Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    invoke-virtual {v3}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 272
    const-string v3, "   Table   Is   Empty   "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 274
    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 279
    iget-object v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v1, v1, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 281
    iget-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$1;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    iget-object v0, v0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer;->mTextView:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e3
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 288
    return-void
.end method
