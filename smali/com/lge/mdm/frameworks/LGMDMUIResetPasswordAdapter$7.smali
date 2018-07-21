.class Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$7;
.super Ljava/lang/Object;
.source "LGMDMUIResetPasswordAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;->showRecoveryPasswordMismatchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;


# direct methods
.method constructor <init>(Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter$7;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIResetPasswordAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 184
    return-void
.end method
