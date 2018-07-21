.class Lcom/lge/launcher3/iconchange/IconChangeActivity$3;
.super Ljava/lang/Object;
.source "IconChangeActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/iconchange/IconChangeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/iconchange/IconChangeActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$3;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 11

    .prologue
    const/16 v6, 0x16

    const/4 v0, 0x1

    .line 169
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$3;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$3;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v2}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$11(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$12(Lcom/lge/launcher3/iconchange/IconChangeActivity;I)V

    .line 170
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$3;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v1}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$11(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 171
    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$3;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v2}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$13(Lcom/lge/launcher3/iconchange/IconChangeActivity;)I

    move-result v2

    div-int v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 172
    iget-object v3, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$3;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v3}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$14(Lcom/lge/launcher3/iconchange/IconChangeActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$3;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v4}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$13(Lcom/lge/launcher3/iconchange/IconChangeActivity;)I

    move-result v4

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    .line 174
    iget-object v4, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$3;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v4}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$14(Lcom/lge/launcher3/iconchange/IconChangeActivity;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_97

    .line 175
    iget-object v4, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$3;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v4}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$14(Lcom/lge/launcher3/iconchange/IconChangeActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$3;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v5}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$13(Lcom/lge/launcher3/iconchange/IconChangeActivity;)I

    move-result v5

    rem-int/2addr v4, v5

    if-nez v4, :cond_54

    .line 176
    const/16 v4, 0x15

    if-ne p2, v4, :cond_54

    .line 192
    :cond_53
    :goto_53
    return v0

    .line 178
    :cond_54
    iget-object v4, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$3;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v4}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$14(Lcom/lge/launcher3/iconchange/IconChangeActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$3;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v5}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$13(Lcom/lge/launcher3/iconchange/IconChangeActivity;)I

    move-result v5

    rem-int/2addr v4, v5

    iget-object v5, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$3;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v5}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$13(Lcom/lge/launcher3/iconchange/IconChangeActivity;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_6d

    .line 179
    if-eq p2, v6, :cond_53

    .line 181
    :cond_6d
    if-ne v2, v3, :cond_83

    const/16 v2, 0x14

    if-ne p2, v2, :cond_83

    .line 182
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_97

    .line 183
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$3;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v1}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$15(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_53

    .line 186
    :cond_83
    iget-object v2, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$3;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v2}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$14(Lcom/lge/launcher3/iconchange/IconChangeActivity;)I

    move-result v2

    if-ne v1, v2, :cond_97

    .line 187
    if-ne p2, v6, :cond_97

    .line 188
    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$3;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v1}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$15(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_53

    .line 192
    :cond_97
    const/4 v0, 0x0

    goto :goto_53
.end method
