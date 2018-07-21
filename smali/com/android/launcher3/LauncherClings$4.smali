.class Lcom/android/launcher3/LauncherClings$4;
.super Ljava/lang/Object;
.source "LauncherClings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherClings;->dismissLongPressCling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherClings;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherClings;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherClings$4;->this$0:Lcom/android/launcher3/LauncherClings;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings$4;->this$0:Lcom/android/launcher3/LauncherClings;

    iget-object v1, p0, Lcom/android/launcher3/LauncherClings$4;->this$0:Lcom/android/launcher3/LauncherClings;

    iget-object v1, v1, Lcom/android/launcher3/LauncherClings;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f0e0098

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 185
    const-string v3, "cling_gel.workspace.dismissed"

    const/16 v4, 0xc8

    .line 184
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/LauncherClings;->dismissCling(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 186
    return-void
.end method
