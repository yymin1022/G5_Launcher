.class Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$1;
.super Ljava/lang/Object;
.source "RUReinstallAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;

.field private final synthetic val$appInfo:Lcom/lge/launcher3/recentuninstall/RUAppInfo;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;ILcom/lge/launcher3/recentuninstall/RUAppInfo;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$1;->this$0:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;

    iput p2, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$1;->val$appInfo:Lcom/lge/launcher3/recentuninstall/RUAppInfo;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$1;->this$0:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;

    invoke-static {v0}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->access$0(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 69
    :cond_d
    :goto_d
    return-void

    .line 62
    :cond_e
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$1;->this$0:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;

    invoke-static {v0}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->access$0(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$1;->this$0:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->notifyDataSetChanged()V

    .line 64
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$1;->this$0:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;

    invoke-static {v0}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->access$1(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;)Lcom/lge/launcher3/recentuninstall/RUActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$1;->val$appInfo:Lcom/lge/launcher3/recentuninstall/RUAppInfo;

    invoke-virtual {v1}, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/recentuninstall/RUActivity;->startEnableProgress(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$1;->this$0:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;

    invoke-static {v0}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->access$0(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 66
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$1;->this$0:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;

    invoke-static {v0}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->access$1(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;)Lcom/lge/launcher3/recentuninstall/RUActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lge/launcher3/recentuninstall/RUActivity;->setOptionMenuEnable(Z)V

    .line 67
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$1;->this$0:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;

    invoke-static {v0}, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;->access$1(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;)Lcom/lge/launcher3/recentuninstall/RUActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d
.end method
