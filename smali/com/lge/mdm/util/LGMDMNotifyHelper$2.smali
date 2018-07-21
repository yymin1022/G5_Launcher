.class Lcom/lge/mdm/util/LGMDMNotifyHelper$2;
.super Ljava/lang/Object;
.source "LGMDMNotifyHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/util/LGMDMNotifyHelper;->displayDecryptionPolicyDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/util/LGMDMNotifyHelper;


# direct methods
.method constructor <init>(Lcom/lge/mdm/util/LGMDMNotifyHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/util/LGMDMNotifyHelper;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/lge/mdm/util/LGMDMNotifyHelper$2;->this$0:Lcom/lge/mdm/util/LGMDMNotifyHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-static {}, Lcom/lge/mdm/util/LGMDMNotifyHelper;->-get0()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 186
    invoke-static {}, Lcom/lge/mdm/util/LGMDMNotifyHelper;->-get0()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 187
    invoke-static {v1}, Lcom/lge/mdm/util/LGMDMNotifyHelper;->-set0(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 184
    :cond_11
    return-void
.end method
