.class Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$4;
.super Ljava/lang/Object;
.source "LGMDMUILockScreenAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$4;->this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 306
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 307
    invoke-static {}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Banner is removed"

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMCClog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method
