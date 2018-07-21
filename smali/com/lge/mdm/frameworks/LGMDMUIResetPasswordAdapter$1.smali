.class Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$1;
.super Ljava/lang/Object;
.source "LGMDMUIResetPasswordAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->showResetPasswordDialog(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;

.field final synthetic val$entercode:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;Landroid/widget/EditText;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;
    .param p2, "val$entercode"    # Landroid/widget/EditText;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;

    iput-object p2, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$1;->val$entercode:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 70
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$1;->val$entercode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 71
    .local v1, "selectionStart":I
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$1;->val$entercode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 72
    .local v0, "selectionEnd":I
    if-eqz p2, :cond_1b

    .line 73
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$1;->val$entercode:Landroid/widget/EditText;

    const/16 v3, 0x91

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 79
    :goto_15
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$1;->val$entercode:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 69
    return-void

    .line 76
    :cond_1b
    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$1;->val$entercode:Landroid/widget/EditText;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_15
.end method
