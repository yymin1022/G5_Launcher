.class Lcom/lge/mdm/controller/LGMDMDualWindowController$1;
.super Ljava/lang/Object;
.source "LGMDMDualWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/controller/LGMDMDualWindowController;->setAllowDualWindow(Landroid/content/ComponentName;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMDualWindowController;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMDualWindowController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMDualWindowController;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMDualWindowController$1;->this$0:Lcom/lge/mdm/controller/LGMDMDualWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 89
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 88
    return-void
.end method
