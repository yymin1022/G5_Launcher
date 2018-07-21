.class Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$4;
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

.field final synthetic val$mdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

.field final synthetic val$userHandle:I

.field final synthetic val$who:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;
    .param p2, "val$mdm"    # Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;
    .param p3, "val$who"    # Landroid/content/ComponentName;
    .param p4, "val$userHandle"    # I

    .prologue
    .line 239
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$4;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter;

    iput-object p2, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$4;->val$mdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    iput-object p3, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$4;->val$who:Landroid/content/ComponentName;

    iput p4, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$4;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$4;->val$mdm:Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$4;->val$who:Landroid/content/ComponentName;

    iget v2, p0, Lcom/lge/mdm/frameworks/LGMDMUIHandlerAdapter$4;->val$userHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->removeCCmode(Landroid/content/ComponentName;I)V

    .line 240
    return-void
.end method
