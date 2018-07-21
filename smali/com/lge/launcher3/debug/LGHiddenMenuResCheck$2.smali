.class Lcom/lge/launcher3/debug/LGHiddenMenuResCheck$2;
.super Ljava/lang/Object;
.source "LGHiddenMenuResCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck$2;->this$0:Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck$2;->this$0:Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;

    invoke-static {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->access$2(Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->access$1()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->access$0(Z)V

    .line 78
    return-void
.end method
