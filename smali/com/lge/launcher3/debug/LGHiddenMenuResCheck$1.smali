.class Lcom/lge/launcher3/debug/LGHiddenMenuResCheck$1;
.super Ljava/lang/Object;
.source "LGHiddenMenuResCheck.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck$1;->this$0:Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 62
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->access$0(Z)V

    .line 63
    invoke-static {}, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->access$1()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->access$1()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 64
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck$1;->this$0:Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;

    invoke-virtual {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 65
    return-void
.end method
