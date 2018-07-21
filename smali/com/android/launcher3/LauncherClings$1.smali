.class Lcom/android/launcher3/LauncherClings$1;
.super Ljava/lang/Object;
.source "LauncherClings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherClings;->dismissMigrationCling()V
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
    iput-object p1, p0, Lcom/android/launcher3/LauncherClings$1;->this$0:Lcom/android/launcher3/LauncherClings;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher3/LauncherClings$1;)Lcom/android/launcher3/LauncherClings;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings$1;->this$0:Lcom/android/launcher3/LauncherClings;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 110
    new-instance v0, Lcom/android/launcher3/LauncherClings$1$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherClings$1$1;-><init>(Lcom/android/launcher3/LauncherClings$1;)V

    .line 116
    iget-object v1, p0, Lcom/android/launcher3/LauncherClings$1;->this$0:Lcom/android/launcher3/LauncherClings;

    iget-object v2, p0, Lcom/android/launcher3/LauncherClings$1;->this$0:Lcom/android/launcher3/LauncherClings;

    iget-object v2, v2, Lcom/android/launcher3/LauncherClings;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f0e009b

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 117
    const-string v3, "cling_gel.migration.dismissed"

    const/16 v4, 0xc8

    .line 116
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/launcher3/LauncherClings;->dismissCling(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 118
    return-void
.end method
