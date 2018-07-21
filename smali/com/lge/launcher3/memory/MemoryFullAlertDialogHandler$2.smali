.class Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler$2;
.super Ljava/lang/Object;
.source "MemoryFullAlertDialogHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler$2;->this$0:Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 90
    sget-object v0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->TAG:Ljava/lang/String;

    const-string v1, "onDismiss()"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method
