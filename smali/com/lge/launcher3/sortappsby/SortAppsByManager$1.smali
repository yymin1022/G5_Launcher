.class Lcom/lge/launcher3/sortappsby/SortAppsByManager$1;
.super Landroid/os/AsyncTask;
.source "SortAppsByManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/sortappsby/SortAppsByManager;->rearrange(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$sortType:Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lge/launcher3/sortappsby/SortAppsByManager$1;->val$sortType:Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    .line 47
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByManager$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByManager$1;->val$sortType:Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;

    invoke-static {v0, v1}, Lcom/lge/launcher3/sortappsby/SortAppsByManager;->access$0(Landroid/content/Context;Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lge/launcher3/sortappsby/SortAppsByManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5

    .prologue
    .line 59
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 71
    :goto_6
    return-void

    .line 63
    :cond_7
    iget-object v0, p0, Lcom/lge/launcher3/sortappsby/SortAppsByManager$1;->val$context:Landroid/content/Context;

    if-nez v0, :cond_13

    .line 64
    sget-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByManager;->TAG:Ljava/lang/String;

    const-string v1, "Context is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 68
    :cond_13
    new-instance v0, Landroid/content/Intent;

    .line 69
    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_KILL_PROCESS:Lcom/lge/launcher3/config/IntentConst$Action;

    iget-object v2, p0, Lcom/lge/launcher3/sortappsby/SortAppsByManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/lge/launcher3/sortappsby/SortAppsByManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/lge/launcher3/sortappsby/SortAppsByManager$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
