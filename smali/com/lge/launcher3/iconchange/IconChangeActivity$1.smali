.class Lcom/lge/launcher3/iconchange/IconChangeActivity$1;
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
    iput-object p1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$1;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
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
    const/4 v2, 0x1

    .line 132
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$1;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$0(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Lcom/lge/launcher3/iconchange/IconChangeInfo;

    move-result-object v0

    if-nez v0, :cond_a

    .line 150
    :goto_9
    return-void

    .line 135
    :cond_a
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$1;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$1(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Lcom/lge/launcher3/iconchange/IconChangeAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/lge/launcher3/iconchange/IconChangeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/iconchange/IconItemInfo;

    .line 136
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$1;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v1, p3}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$2(Lcom/lge/launcher3/iconchange/IconChangeActivity;I)V

    .line 137
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$1;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v1}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$0(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Lcom/lge/launcher3/iconchange/IconChangeInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/lge/launcher3/iconchange/IconChangeInfo;->isDockIcon:Z

    if-eqz v1, :cond_57

    .line 138
    iget v1, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->spanX:I

    if-ne v1, v2, :cond_2d

    iget v0, v0, Lcom/lge/launcher3/iconchange/IconItemInfo;->spanY:I

    if-eq v0, v2, :cond_57

    .line 139
    :cond_2d
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$1;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$3(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 140
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$1;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$3(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 143
    :cond_3e
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$1;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$1;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    .line 144
    const v2, 0x7f0f00e5

    const/4 v3, 0x0

    .line 143
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$4(Lcom/lge/launcher3/iconchange/IconChangeActivity;Landroid/widget/Toast;)V

    .line 145
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$1;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$5(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 148
    :cond_57
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$1;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v0, p3}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$6(Lcom/lge/launcher3/iconchange/IconChangeActivity;I)V

    .line 149
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$1;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$7(Lcom/lge/launcher3/iconchange/IconChangeActivity;)V

    goto :goto_9
.end method
