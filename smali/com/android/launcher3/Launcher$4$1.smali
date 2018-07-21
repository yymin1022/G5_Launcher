.class Lcom/android/launcher3/Launcher$4$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher$4;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/Launcher$4;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher$4;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$4$1;->this$1:Lcom/android/launcher3/Launcher$4;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$4$1;->val$v:Landroid/view/View;

    .line 1813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/android/launcher3/Launcher$4$1;->val$v:Landroid/view/View;

    check-cast v0, Landroid/widget/Advanceable;

    invoke-interface {v0}, Landroid/widget/Advanceable;->advance()V

    .line 1816
    return-void
.end method
