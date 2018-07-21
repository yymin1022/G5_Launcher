.class Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;
.super Ljava/lang/Object;
.source "HiddenMenuDBViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/debug/HiddenMenuDBViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IndexInfo"
.end annotation


# instance fields
.field public currentpage:I

.field public cursorpostion:I

.field public emptytablecolumnnames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public index:I

.field public isCustomQuery:Z

.field public isEmpty:Z

.field public maincursor:Landroid/database/Cursor;

.field public numberofpages:I

.field public table_name:Ljava/lang/String;

.field public tableheadernames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public value_string:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->index:I

    .line 44
    iput v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->numberofpages:I

    .line 45
    iput v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->currentpage:I

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->table_name:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$IndexInfo;->cursorpostion:I

    .line 42
    return-void
.end method
