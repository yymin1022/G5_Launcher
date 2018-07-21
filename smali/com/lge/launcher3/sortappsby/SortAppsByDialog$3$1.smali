.class Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3$1;
.super Ljava/lang/Object;
.source "SortAppsByDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$sortType:Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3;Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3$1;->this$1:Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3;

    iput-object p2, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3$1;->val$sortType:Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByDialog$3$1;->val$sortType:Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    invoke-virtual {v1}, Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;->getToastDesc()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 120
    return-void
.end method
