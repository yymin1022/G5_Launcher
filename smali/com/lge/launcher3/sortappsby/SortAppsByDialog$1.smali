.class Lcom/lge/launcher3/sortappsby/SortAppsByDialog$1;
.super Ljava/lang/Object;
.source "SortAppsByDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/sortappsby/SortAppsByDialog;->showSelectSortTypeDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$1;->val$context:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 41
    invoke-static {}, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->values()[Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    move-result-object v0

    aget-object v0, v0, p2

    .line 42
    iget-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/lge/launcher3/sortappsby/SortAppsByDialog;->access$0(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;Landroid/content/DialogInterface$OnClickListener;)V

    .line 43
    return-void
.end method
