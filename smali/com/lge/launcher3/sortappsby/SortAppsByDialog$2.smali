.class Lcom/lge/launcher3/sortappsby/SortAppsByDialog$2;
.super Ljava/lang/Object;
.source "SortAppsByDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/sortappsby/SortAppsByDialog;->showSelectSortTypeDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$sortButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$2;->val$sortButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 66
    invoke-static {p2}, Lcom/lge/launcher3/sortappsby/SortAppsByDialog;->access$1(I)V

    .line 68
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 70
    invoke-static {}, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->values()[Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    move-result-object v0

    aget-object v0, v0, p2

    .line 71
    iget-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$2;->val$sortButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v1, v0, v2}, Lcom/lge/launcher3/sortappsby/SortAppsByDialog;->access$0(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;Landroid/content/DialogInterface$OnClickListener;)V

    .line 72
    return-void
.end method
