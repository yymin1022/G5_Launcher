.class Lcom/android/launcher3/Launcher$8;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field private final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    iput p2, p0, Lcom/android/launcher3/Launcher$8;->val$resultCode:I

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 758
    iget-object v1, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    iget v0, p0, Lcom/android/launcher3/Launcher$8;->val$resultCode:I

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 759
    :goto_7
    const/16 v2, 0x12c

    const/4 v3, 0x0

    .line 758
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 760
    return-void

    .line 758
    :cond_e
    const/4 v0, 0x0

    goto :goto_7
.end method
