.class Lcom/android/launcher3/LauncherClings$1$1;
.super Ljava/lang/Object;
.source "LauncherClings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherClings$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherClings$1;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherClings$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherClings$1$1;->this$1:Lcom/android/launcher3/LauncherClings$1;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings$1$1;->this$1:Lcom/android/launcher3/LauncherClings$1;

    invoke-static {v0}, Lcom/android/launcher3/LauncherClings$1;->access$0(Lcom/android/launcher3/LauncherClings$1;)Lcom/android/launcher3/LauncherClings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherClings;->showLongPressCling(Z)V

    .line 114
    return-void
.end method
