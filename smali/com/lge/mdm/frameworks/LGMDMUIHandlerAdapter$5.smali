.class Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$5;
.super Ljava/lang/Object;
.source "LGMDMUIHandlerAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->showSafeModeBlockDialog()V
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
    .line 277
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$5;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

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

    .line 279
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$5;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    invoke-static {v0}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->-get1(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 280
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$5;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    invoke-static {v0}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->-get1(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 281
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$5;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    invoke-static {v0, v1}, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->-set0(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 278
    :cond_17
    return-void
.end method
