.class Lcom/android/launcher3/LauncherModel$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->addAppsToAllApps(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field private final synthetic val$allAppsApps:Ljava/util/ArrayList;

.field private final synthetic val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$3;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$3;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$3;->val$allAppsApps:Ljava/util/ArrayList;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher3/LauncherModel$3;)Lcom/android/launcher3/LauncherModel;
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$3;->this$0:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$3;->this$0:Lcom/android/launcher3/LauncherModel;

    new-instance v1, Lcom/android/launcher3/LauncherModel$3$1;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$3;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$3;->val$allAppsApps:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/launcher3/LauncherModel$3$1;-><init>(Lcom/android/launcher3/LauncherModel$3;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 434
    return-void
.end method
