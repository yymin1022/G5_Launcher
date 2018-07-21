.class Lcom/lge/mdm/controller/LGMDMScreenCaptureController$5;
.super Ljava/lang/Object;
.source "LGMDMScreenCaptureController.java"

# interfaces
.implements Lcom/lge/mdm/controller/policy/PolicyVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/controller/LGMDMScreenCaptureController;->isAllowedScreenCaptureBlacklist(Landroid/content/ComponentName;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMScreenCaptureController;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMScreenCaptureController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMScreenCaptureController;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMScreenCaptureController$5;->this$0:Lcom/lge/mdm/controller/LGMDMScreenCaptureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Lcom/lge/mdm/admin/LGMDMadminlist;)Z
    .registers 3
    .param p1, "admin"    # Lcom/lge/mdm/admin/LGMDMadminlist;

    .prologue
    .line 141
    iget-boolean v0, p1, Lcom/lge/mdm/admin/LGMDMadminlist;->allowScreenCaptureWithBlacklist:Z

    return v0
.end method
