.class Lcom/lge/launcher3/droptarget/LGUninstallDropTarget$1;
.super Ljava/lang/Object;
.source "LGUninstallDropTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget$1;->this$0:Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget$1;->this$0:Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;

    invoke-static {v0}, Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;->access$0(Lcom/lge/launcher3/droptarget/LGUninstallDropTarget;)V

    .line 50
    return-void
.end method
