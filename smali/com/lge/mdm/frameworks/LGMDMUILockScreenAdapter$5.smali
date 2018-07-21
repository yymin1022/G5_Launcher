.class Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$5;
.super Ljava/lang/Object;
.source "LGMDMUILockScreenAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->handleShowDodWarningBanner(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;Landroid/app/AlertDialog;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;
    .param p2, "val$dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$5;->this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    iput-object p2, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, -0x3

    .line 325
    if-eqz p2, :cond_e

    .line 326
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 324
    :goto_d
    return-void

    .line 328
    :cond_e
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_d
.end method
