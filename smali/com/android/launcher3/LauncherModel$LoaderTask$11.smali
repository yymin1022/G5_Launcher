.class Lcom/android/launcher3/LauncherModel$LoaderTask$11;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$LoaderTask;->onlyBindAllApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

.field private final synthetic val$list:Ljava/util/ArrayList;

.field private final synthetic val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field private final synthetic val$widgetList:Lcom/android/launcher3/model/WidgetsModel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Lcom/android/launcher3/model/WidgetsModel;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$11;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$11;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$11;->val$list:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$11;->val$widgetList:Lcom/android/launcher3/model/WidgetsModel;

    .line 3058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 3060
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3061
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$11;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$11;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v2

    .line 3062
    if-eqz v2, :cond_18

    .line 3063
    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$11;->val$list:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    .line 3064
    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$11;->val$widgetList:Lcom/android/launcher3/model/WidgetsModel;

    invoke-interface {v2, v3}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindAllPackages(Lcom/android/launcher3/model/WidgetsModel;)V

    .line 3066
    :cond_18
    sget-boolean v2, Lcom/android/launcher3/LauncherModel;->DEBUG_LOADERS:Z

    if-eqz v2, :cond_4c

    .line 3067
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bound all "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$11;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apps from cache in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3068
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3067
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3070
    :cond_4c
    return-void
.end method
