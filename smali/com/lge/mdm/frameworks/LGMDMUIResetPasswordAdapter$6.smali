.class Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$6;
.super Ljava/lang/Object;
.source "LGMDMUIResetPasswordAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$positiveButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;Landroid/widget/Button;Landroid/widget/EditText;)V
    .registers 4
    .param p1, "this$0"    # Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;
    .param p2, "val$positiveButton"    # Landroid/widget/Button;
    .param p3, "val$entercode"    # Landroid/widget/EditText;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$6;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;

    iput-object p2, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$6;->val$positiveButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$6;->val$entercode:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v0, 0x0

    .line 169
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$6;->val$positiveButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$6;->val$entercode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 168
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 159
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$6;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;

    invoke-static {v0}, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->-get1(Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;)Landroid/os/PowerManager;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 164
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$6;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;

    invoke-static {v0}, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->-get1(Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 162
    :cond_16
    return-void
.end method
