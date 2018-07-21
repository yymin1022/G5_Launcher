.class Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList$1;
.super Ljava/lang/Object;
.source "LGHiddenMenuFeatureList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->onActivityCreated(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList$1;->this$0:Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
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
    const/4 v4, 0x0

    .line 56
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList$1;->this$0:Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;

    invoke-static {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->access$0(Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_66

    .line 57
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList$1;->this$0:Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;

    invoke-virtual {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList$1;->this$0:Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;

    invoke-static {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->access$1(Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;)Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;

    iget-object v0, v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->featureFields:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 60
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList$1;->this$0:Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;

    invoke-static {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->access$1(Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;)Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;

    check-cast p2, Landroid/widget/CheckedTextView;

    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->mValume:Z

    .line 69
    :goto_62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->sIschangeRestart:Z

    .line 70
    return-void

    .line 62
    :cond_66
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList$1;->this$0:Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;

    invoke-virtual {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList$1;->this$0:Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;

    invoke-static {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->access$1(Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;)Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->getArray()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList$1;->this$0:Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;

    invoke-static {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->access$0(Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;

    iget-object v0, v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->featureFields:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p2

    .line 64
    check-cast v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 66
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList$1;->this$0:Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;

    invoke-static {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->access$1(Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;)Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->getArray()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList$1;->this$0:Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;

    invoke-static {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;->access$0(Lcom/lge/launcher3/debug/LGHiddenMenuFeatureList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;

    check-cast p2, Landroid/widget/CheckedTextView;

    .line 67
    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    .line 66
    iput-boolean v1, v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->mValume:Z

    goto :goto_62
.end method
