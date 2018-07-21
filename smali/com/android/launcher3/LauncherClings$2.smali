.class Lcom/android/launcher3/LauncherClings$2;
.super Ljava/lang/Object;
.source "LauncherClings.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherClings;->showLongPressCling(Z)V
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
    iput-object p1, p0, Lcom/android/launcher3/LauncherClings$2;->this$0:Lcom/android/launcher3/LauncherClings;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings$2;->this$0:Lcom/android/launcher3/LauncherClings;

    iget-object v0, v0, Lcom/android/launcher3/LauncherClings;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->showOverviewMode(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings$2;->this$0:Lcom/android/launcher3/LauncherClings;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherClings;->dismissLongPressCling()V

    .line 133
    return v1
.end method
