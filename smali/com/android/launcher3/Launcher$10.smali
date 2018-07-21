.class Lcom/android/launcher3/Launcher$10;
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

.field private final synthetic val$appWidgetId:I

.field private final synthetic val$dropLayout:Lcom/android/launcher3/CellLayout;

.field private final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;IILcom/android/launcher3/CellLayout;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$10;->this$0:Lcom/android/launcher3/Launcher;

    iput p2, p0, Lcom/android/launcher3/Launcher$10;->val$resultCode:I

    iput p3, p0, Lcom/android/launcher3/Launcher$10;->val$appWidgetId:I

    iput-object p4, p0, Lcom/android/launcher3/Launcher$10;->val$dropLayout:Lcom/android/launcher3/CellLayout;

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/launcher3/Launcher$10;->this$0:Lcom/android/launcher3/Launcher;

    iget v1, p0, Lcom/android/launcher3/Launcher$10;->val$resultCode:I

    iget v2, p0, Lcom/android/launcher3/Launcher$10;->val$appWidgetId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(II)V

    .line 832
    iget-object v0, p0, Lcom/android/launcher3/Launcher$10;->val$dropLayout:Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setDropPending(Z)V

    .line 833
    return-void
.end method
