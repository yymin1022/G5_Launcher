.class Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3;
.super Ljava/lang/Object;
.source "SortAppsByDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/sortappsby/SortAppsByDialog;->showApplyDialog(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$sortButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private final synthetic val$sortType:Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3;->val$sortType:Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    iput-object p3, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3;->val$sortButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3;->val$sortType:Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/sortappsby/SortAppsByManager;->rearrange(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;Z)Z

    move-result v0

    .line 110
    if-nez v0, :cond_c

    .line 127
    :cond_b
    :goto_b
    return-void

    .line 114
    :cond_c
    new-instance v0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3$1;

    iget-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3;->val$sortType:Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    invoke-direct {v0, p0, v1, v2}, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3$1;-><init>(Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3;Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;)V

    .line 122
    new-instance v1, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;

    iget-object v2, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V

    const/16 v0, 0x3e8

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->show(I)V

    .line 124
    iget-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3;->val$sortButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_b

    .line 125
    iget-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3;->val$sortButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {}, Lcom/lge/launcher3/sortappsby/SortAppsByDialog;->access$2()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_b
.end method
