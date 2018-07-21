.class Lcom/lge/launcher3/iconchange/IconChangeActivity$2;
.super Ljava/lang/Object;
.source "IconChangeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/iconchange/IconChangeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/iconchange/IconChangeActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$2;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
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
    .line 156
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$2;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$8(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->setSelected(ILandroid/view/View;)V

    .line 157
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$2;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$9(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    .line 158
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$2;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$8(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$2;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v2}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$8(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;

    move-result-object v2

    .line 159
    invoke-virtual {v2}, Lcom/lge/launcher3/iconchange/IconChangeDeleteAdapter;->getSelectedCount()I

    move-result v2

    .line 158
    if-ne v0, v2, :cond_2f

    const/4 v0, 0x1

    :goto_26
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 160
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$2;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$10(Lcom/lge/launcher3/iconchange/IconChangeActivity;)V

    .line 162
    return-void

    .line 158
    :cond_2f
    const/4 v0, 0x0

    goto :goto_26
.end method
