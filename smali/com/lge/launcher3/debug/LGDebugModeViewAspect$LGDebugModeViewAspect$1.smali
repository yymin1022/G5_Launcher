.class Lcom/lge/launcher3/debug/LGDebugModeViewAspect$LGDebugModeViewAspect$1;
.super Ljava/lang/Object;
.source "LGDebugModeViewAspect.aj"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/debug/LGDebugModeViewAspect;->ajc$after$com_lge_launcher3_debug_LGDebugModeViewAspect$2$3e137309(Lorg/aspectj/lang/JoinPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/debug/LGDebugModeViewAspect;

.field private final synthetic val$dragLayer:Lcom/android/launcher3/DragLayer;

.field private final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/debug/LGDebugModeViewAspect;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/DragLayer;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/debug/LGDebugModeViewAspect$LGDebugModeViewAspect$1;->this$0:Lcom/lge/launcher3/debug/LGDebugModeViewAspect;

    iput-object p2, p0, Lcom/lge/launcher3/debug/LGDebugModeViewAspect$LGDebugModeViewAspect$1;->val$launcher:Lcom/android/launcher3/Launcher;

    iput-object p3, p0, Lcom/lge/launcher3/debug/LGDebugModeViewAspect$LGDebugModeViewAspect$1;->val$dragLayer:Lcom/android/launcher3/DragLayer;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGDebugModeViewAspect$LGDebugModeViewAspect$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 48
    if-nez v1, :cond_9

    .line 53
    :goto_8
    return-void

    .line 52
    :cond_9
    const v2, 0x7f040020

    iget-object v0, p0, Lcom/lge/launcher3/debug/LGDebugModeViewAspect$LGDebugModeViewAspect$1;->val$dragLayer:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_8
.end method
