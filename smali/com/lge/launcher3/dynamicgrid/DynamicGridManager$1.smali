.class Lcom/lge/launcher3/dynamicgrid/DynamicGridManager$1;
.super Landroid/os/AsyncTask;
.source "DynamicGridManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final DELAY_TIME:I

.field final synthetic this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager$1;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    .line 73
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 74
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager$1;->DELAY_TIME:I

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager$1;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .registers 5

    .prologue
    .line 78
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager$1;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    invoke-static {v1}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->access$0(Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;)Lcom/lge/launcher3/dynamicgrid/DynamicGrid;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager$1;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    invoke-static {v2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->access$1(Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/dynamicgrid/DynamicGrid;->updateDatabase([I)V

    .line 81
    const-wide/16 v0, 0x4b0

    :try_start_1e
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_23

    .line 85
    :goto_21
    const/4 v0, 0x0

    return-object v0

    .line 82
    :catch_23
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_21
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    .line 91
    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_KILL_PROCESS:Lcom/lge/launcher3/config/IntentConst$Action;

    iget-object v2, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager$1;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    invoke-static {v2}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->access$2(Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager$1;->this$0:Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;

    invoke-static {v1}, Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;->access$3(Lcom/lge/launcher3/dynamicgrid/DynamicGridManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 94
    return-void
.end method
