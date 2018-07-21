.class Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$3;
.super Ljava/lang/Object;
.source "LGMDMUIHandlerAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;->showCCmodeChangeNotyDialog(ILandroid/content/ComponentName;)V
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
    .line 233
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$3;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 235
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 234
    return-void
.end method
