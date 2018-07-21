.class Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$2;
.super Ljava/lang/Object;
.source "LGMDMUIHandlerAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->showChangePasswordDialogWarning(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;


# direct methods
.method constructor <init>(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$2;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 214
    const-string/jumbo v1, "PASSWORD_EXPIRE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$2;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    invoke-static {v1}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->-get0(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 210
    return-void
.end method
